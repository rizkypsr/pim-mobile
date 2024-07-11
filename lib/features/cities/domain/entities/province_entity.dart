import 'package:freezed_annotation/freezed_annotation.dart';

part 'province_entity.freezed.dart';

@freezed
class ProvinceEntity with _$ProvinceEntity {
  const factory ProvinceEntity({
    required int id,
    required String provinceName,
    required String createdAt,
    required String updatedAt,
  }) = _ProvinceEntity;
}
