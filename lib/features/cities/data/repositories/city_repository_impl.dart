import 'package:dartz/dartz.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/core/providers.dart';
import 'package:pim_mobile/features/cities/data/datasources/city_remote_datasource.dart';
import 'package:pim_mobile/features/cities/domain/entities/city_entity.dart';
import 'package:pim_mobile/features/cities/domain/repositories/city_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'city_repository_impl.g.dart';

class CityRepositoryImpl implements CityRepository {
  final CityRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  CityRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<CityEntity>>> getCities() async {
    if (await networkInfo.isConnected) {
      try {
        final cities = await remoteDataSource.getCities();
        return Right(cities.map((car) => car.toEntity()).toList());
      } catch (e) {
        return Left(ErrorHandler.handle(e).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}

@riverpod
CityRepository cityRepository(CityRepositoryRef ref) {
  return CityRepositoryImpl(
    remoteDataSource: ref.read(cityRemoteDataSourceImplProvider.notifier),
    networkInfo: ref.read(networkInfoProvider),
  );
}
