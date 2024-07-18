import 'package:dartz/dartz.dart';
import 'package:logger/web.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/core/providers.dart';
import 'package:pim_mobile/features/cars/data/datasource/car_remote_datasource.dart';
import 'package:pim_mobile/features/cars/domain/entities/car_entity.dart';
import 'package:pim_mobile/features/cars/domain/repositories/car_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'car_repository_impl.g.dart';

class CarRepositoryImpl implements CarRepository {
  final CarRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  CarRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<CarEntity>>> getCars(
    int? minPrice,
    int? maxPrice,
    String? carName,
    String? brandName,
    String? fromYear,
    String? toYear,
    int? cityId, {
    String? sort,
  }) async {
    var log = Logger();

    if (await networkInfo.isConnected) {
      try {
        final cars = await remoteDataSource.getCars(
          minPrice,
          maxPrice,
          carName,
          brandName,
          fromYear,
          toYear,
          cityId,
          sort: sort,
        );
        return Right(cars.map((car) => car.toEntity()).toList());
      } catch (e) {
        log.e(e);
        return Left(ErrorHandler.handle(e).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}

@riverpod
CarRepository carRepository(CarRepositoryRef ref) {
  return CarRepositoryImpl(
    remoteDataSource: ref.read(carRemoteDataSourceImplProvider.notifier),
    networkInfo: ref.read(networkInfoProvider),
  );
}
