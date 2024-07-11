// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'showroom_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShowroomModelImpl _$$ShowroomModelImplFromJson(Map<String, dynamic> json) =>
    _$ShowroomModelImpl(
      id: (json['id'] as num).toInt(),
      city: json['city'] as String,
      province: json['province'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      cars: (json['cars'] as List<dynamic>)
          .map((e) => CarModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      showroomName: json['showroom_name'] as String,
      whatsappNumber: json['whatsapp_number'] as String,
      whatsappUrl: json['whatsapp_url'] as String,
      video: json['video'] as String?,
    );

Map<String, dynamic> _$$ShowroomModelImplToJson(_$ShowroomModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'city': instance.city,
      'province': instance.province,
      'images': instance.images,
      'cars': instance.cars,
      'showroom_name': instance.showroomName,
      'whatsapp_number': instance.whatsappNumber,
      'whatsapp_url': instance.whatsappUrl,
      'video': instance.video,
    };
