import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_cars_params.freezed.dart';

@freezed
class GetCarsParams with _$GetCarsParams {
  const factory GetCarsParams({
    int? minPrice,
    int? maxPrice,
    String? brandName,
    String? fromyear,
    String? toyear,
    int? cityId,
    String? cityName,
    String? sort,
  }) = _GetCarsParams;
}
