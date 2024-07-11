import 'package:dartz/dartz.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/core/providers.dart';
import 'package:pim_mobile/features/home/data/datasources/service_remote_datasource.dart';
import 'package:pim_mobile/features/home/domain/repositories/service_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'service_repository_impl.g.dart';

class ServiceRepositoryImpl implements ServiceRepository {
  final ServiceRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  ServiceRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, String>> submitService(
    int cityId,
    String name,
    String address,
    String phone,
    String serviceType,
    String carDescription,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final message = await remoteDataSource.submitService(
          cityId,
          name,
          address,
          phone,
          serviceType,
          carDescription,
        );
        return Right(message);
      } catch (e) {
        return Left(ErrorHandler.handle(e).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}

@riverpod
ServiceRepository serviceRepository(ServiceRepositoryRef ref) {
  return ServiceRepositoryImpl(
    remoteDataSource: ref.read(serviceRemoteDataSourceImplProvider.notifier),
    networkInfo: ref.read(networkInfoProvider),
  );
}
