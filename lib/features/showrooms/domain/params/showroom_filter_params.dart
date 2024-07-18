import 'package:freezed_annotation/freezed_annotation.dart';

part 'showroom_filter_params.freezed.dart';

@freezed
class ShowroomFilterParams with _$ShowroomFilterParams {
  const factory ShowroomFilterParams({
    String? showroomName,
  }) = _ShowroomFilterParams;

  factory ShowroomFilterParams.initial() => const ShowroomFilterParams();
}
