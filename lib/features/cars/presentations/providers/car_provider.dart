import 'package:pim_mobile/features/cars/domain/entities/car_entity.dart';
import 'package:pim_mobile/features/cars/domain/usecases/get_cars.dart';
import 'package:pim_mobile/features/cars/presentations/providers/car_filter_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'car_provider.g.dart';

@riverpod
Future<List<CarEntity>> getCars(GetCarsRef ref) async {
  final filter = ref.watch(carFilterProvider);

  final getCarUsecase = await ref.read(getCarsUseCaseProvider).call(filter);

  return getCarUsecase.fold((failure) {
    throw failure;
  }, (data) {
    return data;
  });
}
