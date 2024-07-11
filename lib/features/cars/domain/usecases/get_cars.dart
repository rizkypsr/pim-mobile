import 'package:dartz/dartz.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/features/cars/data/repositories/car_repository_impl.dart';
import 'package:pim_mobile/features/cars/domain/entities/car_entity.dart';
import 'package:pim_mobile/features/cars/domain/params/car_filter_params.dart';
import 'package:pim_mobile/features/cars/domain/repositories/car_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_cars.g.dart';

class GetCarsUsecase implements UseCase<CarEntity, CarFilterParams> {
  final CarRepository repository;

  GetCarsUsecase({required this.repository});

  @override
  Future<Either<Failure, List<CarEntity>>> call(CarFilterParams params) {
    return repository.getCars(
      params.minPrice,
      params.maxPrice,
      params.carName,
      params.brandName,
      params.fromYear,
      params.toYear,
      params.cityId,
      sort: params.sort ?? 'desc',
    );
  }
}

@riverpod
GetCarsUsecase getCarsUseCase(GetCarsUseCaseRef ref) {
  return GetCarsUsecase(
    repository: ref.read(carRepositoryProvider),
  );
}
