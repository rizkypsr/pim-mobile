import 'package:dartz/dartz.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/features/cities/data/repositories/city_repository_impl.dart';
import 'package:pim_mobile/features/cities/domain/entities/city_entity.dart';
import 'package:pim_mobile/features/cities/domain/repositories/city_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_cities.g.dart';

class GetCitiesUsecase implements UseCase<CityEntity, NoParams> {
  final CityRepository repository;

  GetCitiesUsecase({required this.repository});

  @override
  Future<Either<Failure, List<CityEntity>>> call(int? id, NoParams params) {
    return repository.getCities();
  }
}

@riverpod
GetCitiesUsecase getCitiesUseCase(GetCitiesUseCaseRef ref) {
  return GetCitiesUsecase(
    repository: ref.read(cityRepositoryProvider),
  );
}
