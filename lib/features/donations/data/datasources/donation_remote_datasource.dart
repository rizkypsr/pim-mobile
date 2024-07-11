import 'package:pim_mobile/core/constants/constans.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/features/donations/data/models/donation_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'donation_remote_datasource.g.dart';

abstract class DonationRemoteDatasource {
  Future<DonationModel> getDonations();
}

@riverpod
class DonationRemoteDataSourceImpl extends _$DonationRemoteDataSourceImpl
    implements DonationRemoteDatasource {
  @override
  FutureOr<void> build() async {}

  @override
  Future<DonationModel> getDonations() async {
    final dioService = ref.read(dioProvider).dio();

    var response = await dioService.get(Endpoints.getPath(
      Endpoints.getDonations,
    ));

    if (response.data['data'] != null) {
      return (response.data['data'] as List)
          .map((data) => DonationModel.fromJson(data))
          .toList()
          .first;
    }

    throw Exception('Gagal mendapatkan data donasi');
  }
}
