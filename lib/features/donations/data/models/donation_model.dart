import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pim_mobile/features/donations/domain/entities/donation_entity.dart';

part 'donation_model.freezed.dart';
part 'donation_model.g.dart';

@freezed
class DonationModel with _$DonationModel {
  const DonationModel._();

  const factory DonationModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "subtitle") required String subtitle,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "video") required String? video,
    @JsonKey(name: "images") required List<String>? images,
    @JsonKey(name: 'whatsapp_number') String? whatsappNumber,
    @JsonKey(name: 'whatsapp_url') String? whatsappUrl,
    @JsonKey(name: "created_at") required String createdAt,
  }) = _DonationModel;

  factory DonationModel.fromJson(Map<String, dynamic> json) =>
      _$DonationModelFromJson(json);

  DonationEntity toEntity() {
    return DonationEntity(
      id: id,
      title: title,
      subtitle: subtitle,
      description: description,
      video: video,
      whatsappNumber: whatsappNumber,
      whatsappUrl: whatsappUrl,
      images: images,
      createdAt: createdAt,
    );
  }
}
