// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pim_mobile/features/cars/domain/entities/car_entity.dart';

part 'showroom_entity.freezed.dart';

@freezed
class ShowroomEntity with _$ShowroomEntity {
  const ShowroomEntity._();

  const factory ShowroomEntity({
    required int id,
    required String showroomName,
    required String city,
    required String province,
    required List<String> images,
    required List<CarEntity> cars,
    String? whatsappNumber,
    String? whatsappUrl,
    String? video,
  }) = _ShowroomEntity;
}
