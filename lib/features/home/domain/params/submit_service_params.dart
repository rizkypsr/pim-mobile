import 'package:freezed_annotation/freezed_annotation.dart';

part 'submit_service_params.freezed.dart';

@freezed
class SubmitServiceParams with _$SubmitServiceParams {
  const factory SubmitServiceParams({
    int? cityId,
    String? name,
    String? address,
    String? phone,
    String? serviceType,
    String? carDescription,
  }) = _SubmitServiceParams;
}
