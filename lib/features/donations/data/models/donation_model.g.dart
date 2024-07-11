// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DonationModelImpl _$$DonationModelImplFromJson(Map<String, dynamic> json) =>
    _$DonationModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      description: json['description'] as String,
      video: json['video'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      whatsappNumber: json['whatsapp_number'] as String?,
      whatsappUrl: json['whatsapp_url'] as String?,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$DonationModelImplToJson(_$DonationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'description': instance.description,
      'video': instance.video,
      'images': instance.images,
      'whatsapp_number': instance.whatsappNumber,
      'whatsapp_url': instance.whatsappUrl,
      'created_at': instance.createdAt,
    };
