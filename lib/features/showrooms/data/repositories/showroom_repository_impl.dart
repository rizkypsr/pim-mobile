import 'package:dartz/dartz.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/core/providers.dart';
import 'package:pim_mobile/features/showrooms/data/datasources/showroom_remote_datasource.dart';
import 'package:pim_mobile/features/showrooms/domain/entities/showroom_entity.dart';
import 'package:pim_mobile/features/showrooms/domain/repositories/showroom_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'showroom_repository_impl.g.dart';

class ShowroomRepositoryImpl implements ShowroomRepository {
  final ShowroomRemoteDatasource remoteDataSource;
  final NetworkInfo networkInfo;

  ShowroomRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<ShowroomEntity>>> getShowrooms() async {
    if (await networkInfo.isConnected) {
      try {
        final showrooms = await remoteDataSource.getShowrooms();
        return Right(showrooms.map((showroom) => showroom.toEntity()).toList());
      } catch (e) {
        return Left(ErrorHandler.handle(e).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}

@riverpod
ShowroomRepository showroomRepository(ShowroomRepositoryRef ref) {
  return ShowroomRepositoryImpl(
    remoteDataSource: ref.read(showroomRemoteDatasourceImplProvider.notifier),
    networkInfo: ref.read(networkInfoProvider),
  );
}
