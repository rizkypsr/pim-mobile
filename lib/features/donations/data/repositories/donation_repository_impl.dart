import 'package:dartz/dartz.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/core/providers.dart';
import 'package:pim_mobile/features/donations/data/datasources/donation_remote_datasource.dart';
import 'package:pim_mobile/features/donations/domain/entities/donation_entity.dart';
import 'package:pim_mobile/features/donations/domain/repositories/donation_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'donation_repository_impl.g.dart';

class DonationRepositoryImpl implements DonationRepository {
  final DonationRemoteDatasource remoteDataSource;
  final NetworkInfo networkInfo;

  DonationRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, DonationEntity>> getDonations() async {
    if (await networkInfo.isConnected) {
      try {
        final donation = await remoteDataSource.getDonations();
        return Right(donation.toEntity());
      } catch (e) {
        return Left(ErrorHandler.handle(e).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}

@riverpod
DonationRepository donationRepository(DonationRepositoryRef ref) {
  return DonationRepositoryImpl(
    remoteDataSource: ref.read(donationRemoteDataSourceImplProvider.notifier),
    networkInfo: ref.read(networkInfoProvider),
  );
}
