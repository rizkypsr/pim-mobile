import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/features/donations/domain/entities/donation_entity.dart';
import 'package:pim_mobile/features/donations/domain/usecase/get_donations.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'donations_notifier.g.dart';

@riverpod
class Donations extends _$Donations {
  @override
  Future<DonationEntity> build() async {
    return await getDonations();
  }

  Future<DonationEntity> getDonations() async {
    final getDonationsUsecase =
        await ref.read(getDonationsUseCaseProvider).call(NoParams());

    return getDonationsUsecase.fold((failure) {
      throw failure;
    }, (data) {
      return data;
    });
  }
}
