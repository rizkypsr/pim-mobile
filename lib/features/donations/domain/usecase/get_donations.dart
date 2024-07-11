import 'package:dartz/dartz.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/features/donations/data/repositories/donation_repository_impl.dart';
import 'package:pim_mobile/features/donations/domain/entities/donation_entity.dart';
import 'package:pim_mobile/features/donations/domain/repositories/donation_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_donations.g.dart';

class GetDonationsUseCase extends UseCase<List<DonationEntity>, NoParams> {
  final DonationRepository repository;

  GetDonationsUseCase(this.repository);

  @override
  Future<Either<Failure, DonationEntity>> call(NoParams params) async {
    return await repository.getDonations();
  }
}

@riverpod
GetDonationsUseCase getDonationsUseCase(GetDonationsUseCaseRef ref) {
  return GetDonationsUseCase(
    ref.read(donationRepositoryProvider),
  );
}
