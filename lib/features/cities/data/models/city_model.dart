// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pim_mobile/features/cities/data/models/province_model.dart';
import 'package:pim_mobile/features/cities/domain/entities/city_entity.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

@freezed
class CityModel with _$CityModel {
  const CityModel._();

  const factory CityModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "city_name") required String cityName,
    @JsonKey(name: "province_id") required int provinceId,
    @JsonKey(name: "province") ProvinceModel? province,
    @JsonKey(name: "created_at") required String createdAt,
    @JsonKey(name: "updated_at") required String updatedAt,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);

  CityEntity toEntity() {
    return CityEntity(
      id: id,
      cityName: cityName,
      provinceId: provinceId,
      province: province?.toEntity(),
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
