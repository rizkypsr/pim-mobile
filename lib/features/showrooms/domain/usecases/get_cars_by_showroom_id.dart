import 'package:dartz/dartz.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/features/cars/domain/entities/car_entity.dart';
import 'package:pim_mobile/features/showrooms/data/repositories/showroom_repository_impl.dart';
import 'package:pim_mobile/features/showrooms/domain/params/showroom_car_filter_params.dart';
import 'package:pim_mobile/features/showrooms/domain/repositories/showroom_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_cars_by_showroom_id.g.dart';

class GetCarsByShowroomIdUsecase
    implements UseCase<CarEntity, ShowroomCarFilterParams> {
  final ShowroomRepository repository;

  GetCarsByShowroomIdUsecase({required this.repository});

  @override
  Future<Either<Failure, List<CarEntity>>> call(
    int? id,
    ShowroomCarFilterParams params,
  ) {
    return repository.getCarsByShowroomId(
      id!,
      params.minPrice,
      params.maxPrice,
      params.carName,
      params.brandName,
      params.fromYear,
      params.toYear,
      params.cityId,
      params.sort ?? 'desc',
    );
  }
}

@riverpod
GetCarsByShowroomIdUsecase getCarsByShowroomIdUseCase(
  GetCarsByShowroomIdUseCaseRef ref,
) {
  return GetCarsByShowroomIdUsecase(
    repository: ref.read(showroomRepositoryProvider),
  );
}
