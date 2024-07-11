// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pim_mobile/features/cars/data/models/car_model.dart';
import 'package:pim_mobile/features/showrooms/domain/entities/showroom_entity.dart';

part 'showroom_model.freezed.dart';
part 'showroom_model.g.dart';

@freezed
class ShowroomModel with _$ShowroomModel {
  const ShowroomModel._();

  const factory ShowroomModel({
    required int id,
    required String city,
    required String province,
    required List<String> images,
    @JsonKey(name: 'cars') required List<CarModel> cars,
    @JsonKey(name: 'showroom_name') required String showroomName,
    @JsonKey(name: 'whatsapp_number') required String whatsappNumber,
    @JsonKey(name: 'whatsapp_url') required String whatsappUrl,
    String? video,
  }) = _ShowroomModel;

  factory ShowroomModel.fromJson(Map<String, dynamic> json) =>
      _$ShowroomModelFromJson(json);

  ShowroomEntity toEntity() {
    return ShowroomEntity(
      id: id,
      city: city,
      province: province,
      showroomName: showroomName,
      whatsappNumber: whatsappNumber,
      whatsappUrl: whatsappUrl,
      video: video,
      cars: cars.map((car) => car.toEntity()).toList(),
      images: images.map((image) => image).toList(),
    );
  }
}
