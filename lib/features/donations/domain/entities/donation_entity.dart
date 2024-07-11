import 'package:freezed_annotation/freezed_annotation.dart';

part 'donation_entity.freezed.dart';

@freezed
class DonationEntity with _$DonationEntity {
  const factory DonationEntity({
    int? id,
    String? title,
    String? subtitle,
    String? description,
    String? video,
    String? whatsappNumber,
    String? whatsappUrl,
    List<String>? images,
    String? createdAt,
  }) = _DonationEntity;
}
