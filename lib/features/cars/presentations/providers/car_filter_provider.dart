import 'package:pim_mobile/features/cars/domain/params/car_filter_params.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'car_filter_provider.g.dart';

@riverpod
class CarFilter extends _$CarFilter {
  @override
  CarFilterParams build() {
    return const CarFilterParams();
  }

  void update(CarFilterParams filter) {
    if (filter == CarFilterParams.initial()) {
      state = filter;
    } else if (filter != state) {
      state = filter.copyWith(
        minPrice: filter.minPrice ?? state.minPrice,
        maxPrice: filter.maxPrice ?? state.maxPrice,
        carName: filter.carName ?? state.carName,
        brandName: filter.brandName ?? state.brandName,
        cityId: filter.cityId ?? state.cityId,
        cityName: filter.cityName ?? state.cityName,
        fromYear: filter.fromYear ?? state.fromYear,
        toYear: filter.toYear ?? state.toYear,
        sort: filter.sort ?? state.sort,
      );
    }
  }
}
