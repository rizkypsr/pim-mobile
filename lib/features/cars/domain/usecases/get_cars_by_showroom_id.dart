import 'package:dartz/dartz.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/features/cars/data/repositories/car_repository_impl.dart';
import 'package:pim_mobile/features/cars/domain/entities/car_entity.dart';
import 'package:pim_mobile/features/cars/domain/params/get_cars_by_showroom_id_params.dart';
import 'package:pim_mobile/features/cars/domain/params/get_cars_params.dart';
import 'package:pim_mobile/features/cars/domain/repositories/car_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_cars_by_showroom_id.g.dart';

class GetCarsByShowroomIdUsecase
    implements UseCase<CarEntity, GetCarsByShowroomIdParams> {
  final CarRepository repository;

  GetCarsByShowroomIdUsecase({required this.repository});

  @override
  Future<Either<Failure, List<CarEntity>>> call(
      GetCarsByShowroomIdParams params) {
    return repository.getCarsByShowroomId(
      params.showroomId,
      params.minPrice,
      params.maxPrice,
      params.brandName,
      params.year,
      params.cityId,
      sort: params.sort,
    );
  }
}

@riverpod
GetCarsByShowroomIdUsecase getCarsByShowroomIdUseCase(
    GetCarsByShowroomIdUseCaseRef ref) {
  return GetCarsByShowroomIdUsecase(
    repository: ref.read(carRepositoryProvider),
  );
}
