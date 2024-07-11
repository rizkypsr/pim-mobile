import 'package:pim_mobile/core/constants/constans.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/features/cities/data/models/city_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'city_remote_datasource.g.dart';

abstract class CityRemoteDataSource {
  Future<List<CityModel>> getCities();
}

@riverpod
class CityRemoteDataSourceImpl extends _$CityRemoteDataSourceImpl
    implements CityRemoteDataSource {
  @override
  FutureOr<void> build() async {}

  @override
  Future<List<CityModel>> getCities() async {
    final dioService = ref.read(dioProvider).dio();

    var response = await dioService.get(Endpoints.getPath(
      Endpoints.getCities,
    ));

    if (response.data['data'] != null) {
      return (response.data['data'] as List)
          .map((data) => CityModel.fromJson(data))
          .toList();
    }

    return [];
  }
}
