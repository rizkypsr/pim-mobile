// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pim_mobile/features/cars/domain/entities/car_entity.dart';
import 'package:pim_mobile/features/showrooms/data/models/showroom_model.dart';

part 'car_model.freezed.dart';
part 'car_model.g.dart';

@freezed
class CarModel with _$CarModel {
  const CarModel._();

  const factory CarModel({
    required int id,
    required double price,
    required List<String> images,
    String? description,
    String? video,
    String? year,
    String? city,
    String? province,
    ShowroomModel? showroom,
    @JsonKey(name: 'car_name') required String carName,
    @JsonKey(name: 'brand_name') required String brandName,
    @JsonKey(name: 'whatsapp_number') String? whatsappNumber,
    @JsonKey(name: 'whatsapp_url') String? whatsappUrl,
  }) = _CarModel;

  factory CarModel.fromJson(Map<String, dynamic> json) =>
      _$CarModelFromJson(json);

  CarEntity toEntity() {
    return CarEntity(
      id: id,
      carName: carName,
      brandName: brandName,
      price: price,
      images: images.map((image) => image).toList(),
      description: description,
      video: video,
      year: year,
      city: city,
      province: province,
      showroom: showroom?.toEntity(),
      whatsappNumber: whatsappNumber,
      whatsappUrl: whatsappUrl,
    );
  }
}
