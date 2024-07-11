import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pim_mobile/features/cities/domain/entities/province_entity.dart';

part 'city_entity.freezed.dart';

@freezed
class CityEntity with _$CityEntity {
  const factory CityEntity({
    int? id,
    String? cityName,
    int? provinceId,
    ProvinceEntity? province,
    String? createdAt,
    String? updatedAt,
  }) = _CityEntity;
}
