// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarModelImpl _$$CarModelImplFromJson(Map<String, dynamic> json) =>
    _$CarModelImpl(
      id: (json['id'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      description: json['description'] as String?,
      video: json['video'] as String?,
      year: json['year'] as String?,
      city: json['city'] as String?,
      province: json['province'] as String?,
      showroom: json['showroom'] == null
          ? null
          : ShowroomModel.fromJson(json['showroom'] as Map<String, dynamic>),
      carName: json['car_name'] as String,
      brandName: json['brand_name'] as String,
      whatsappNumber: json['whatsapp_number'] as String?,
      whatsappUrl: json['whatsapp_url'] as String?,
    );

Map<String, dynamic> _$$CarModelImplToJson(_$CarModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'images': instance.images,
      'description': instance.description,
      'video': instance.video,
      'year': instance.year,
      'city': instance.city,
      'province': instance.province,
      'showroom': instance.showroom,
      'car_name': instance.carName,
      'brand_name': instance.brandName,
      'whatsapp_number': instance.whatsappNumber,
      'whatsapp_url': instance.whatsappUrl,
    };
