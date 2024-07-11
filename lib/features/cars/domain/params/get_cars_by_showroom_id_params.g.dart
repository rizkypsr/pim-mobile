// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cars_by_showroom_id_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetCarsByShowroomIdParamsImpl _$$GetCarsByShowroomIdParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$GetCarsByShowroomIdParamsImpl(
      showroomId: (json['showroomId'] as num?)?.toInt(),
      minPrice: (json['minPrice'] as num?)?.toInt(),
      maxPrice: (json['maxPrice'] as num?)?.toInt(),
      brandName: json['brandName'] as String?,
      year: json['year'] as String?,
      cityId: (json['cityId'] as num?)?.toInt(),
      sort: json['sort'] as String? ?? 'desc',
    );

Map<String, dynamic> _$$GetCarsByShowroomIdParamsImplToJson(
        _$GetCarsByShowroomIdParamsImpl instance) =>
    <String, dynamic>{
      'showroomId': instance.showroomId,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'brandName': instance.brandName,
      'year': instance.year,
      'cityId': instance.cityId,
      'sort': instance.sort,
    };
