import 'package:freezed_annotation/freezed_annotation.dart';

part 'showroom_car_filter_params.freezed.dart';

@freezed
class ShowroomCarFilterParams with _$ShowroomCarFilterParams {
  const factory ShowroomCarFilterParams({
    int? showroomId,
    int? minPrice,
    int? maxPrice,
    String? carName,
    String? brandName,
    String? fromYear,
    String? toYear,
    int? cityId,
    String? cityName,
    String? sort,
  }) = _ShowroomCarFilterParams;

  factory ShowroomCarFilterParams.initial() => const ShowroomCarFilterParams();
}
