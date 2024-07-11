import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_filter_params.freezed.dart';

@freezed
class CarFilterParams with _$CarFilterParams {
  const factory CarFilterParams({
    int? minPrice,
    int? maxPrice,
    String? carName,
    String? brandName,
    String? fromYear,
    String? toYear,
    int? cityId,
    String? cityName,
    String? sort,
  }) = _CarFilter;

  factory CarFilterParams.initial() => const CarFilterParams();
}
