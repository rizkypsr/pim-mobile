import 'package:pim_mobile/core/constants/constans.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'service_remote_datasource.g.dart';

abstract class ServiceRemoteDataSource {
  Future<String> submitService(
    int cityId,
    String name,
    String address,
    String phone,
    String serviceType,
    String carDescription,
  );
}

@riverpod
class ServiceRemoteDataSourceImpl extends _$ServiceRemoteDataSourceImpl
    implements ServiceRemoteDataSource {
  ServiceRemoteDataSourceImpl() : super();

  @override
  FutureOr<void> build() async {}

  @override
  Future<String> submitService(
    int cityId,
    String name,
    String address,
    String phone,
    String serviceType,
    String carDescription,
  ) async {
    final dioService = ref.read(dioProvider).dio();

    var response = await dioService.post(
      Endpoints.getPath(
        Endpoints.submitService,
      ),
      data: {
        'city_id': cityId,
        'name': name,
        'address': address,
        'phone': phone,
        'service_type': serviceType,
        'car_description': carDescription,
      },
    );

    return response.data['data'];
  }
}
