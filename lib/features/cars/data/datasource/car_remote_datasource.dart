import 'package:pim_mobile/core/constants/constans.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/features/cars/data/models/car_model.dart';
import 'package:qs_dart/qs_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'car_remote_datasource.g.dart';

abstract class CarRemoteDataSource {
  Future<List<CarModel>> getCars(
    int? minPrice,
    int? maxPrice,
    String? carName,
    String? brandName,
    String? fromYear,
    String? toYear,
    int? cityId, {
    String? sort,
  });
}

@riverpod
class CarRemoteDataSourceImpl extends _$CarRemoteDataSourceImpl
    implements CarRemoteDataSource {
  @override
  FutureOr<void> build() async {}

  @override
  Future<List<CarModel>> getCars(
    int? minPrice,
    int? maxPrice,
    String? carName,
    String? brandName,
    String? fromYear,
    String? toYear,
    int? cityId, {
    String? sort = 'desc',
  }) async {
    final dioService = ref.read(dioProvider).dio();

    var params = {
      'filters': {
        'price': {
          '\$gte': minPrice,
          '\$lte': maxPrice,
        },
        'year': {
          '\$gte': fromYear,
          '\$lte': toYear,
        },
        'car_name': {
          '\$contains': carName,
        },
        'brand_name': {
          '\$contains': brandName,
        },
        'city_id': {
          '\$eq': cityId,
        },
      },
      'sort': 'created_at:$sort',
    };

    String queryString = QS.encode(
      params,
      const EncodeOptions(
        skipNulls: true,
      ),
    );

    var response = await dioService.get(Endpoints.getPath(
      Endpoints.getCars,
      query: queryString,
    ));

    if (response.data['data'] != null) {
      return (response.data['data'] as List)
          .map((data) => CarModel.fromJson(data))
          .toList();
    }

    return [];
  }
}
