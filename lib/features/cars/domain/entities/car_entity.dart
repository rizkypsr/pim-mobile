import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pim_mobile/features/showrooms/domain/entities/showroom_entity.dart';

part 'car_entity.freezed.dart';

@freezed
class CarEntity with _$CarEntity {
  const factory CarEntity({
    required int id,
    required String carName,
    required String brandName,
    required double price,
    required List<String> images,
    String? description,
    String? video,
    String? year,
    String? whatsappNumber,
    String? whatsappUrl,
    String? city,
    String? province,
    ShowroomEntity? showroom,
  }) = _CarEntity;
}
