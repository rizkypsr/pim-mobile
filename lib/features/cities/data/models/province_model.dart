// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pim_mobile/features/cities/domain/entities/province_entity.dart';

part 'province_model.freezed.dart';
part 'province_model.g.dart';

@freezed
class ProvinceModel with _$ProvinceModel {
  const ProvinceModel._();

  const factory ProvinceModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "province_name") required String provinceName,
    @JsonKey(name: "created_at") required String createdAt,
    @JsonKey(name: "updated_at") required String updatedAt,
  }) = _ProvinceModel;

  factory ProvinceModel.fromJson(Map<String, dynamic> json) =>
      _$ProvinceModelFromJson(json);

  ProvinceEntity toEntity() {
    return ProvinceEntity(
      id: id,
      provinceName: provinceName,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
