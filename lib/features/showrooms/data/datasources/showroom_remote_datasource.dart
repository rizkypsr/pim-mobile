import 'package:pim_mobile/core/constants/endpoints.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/features/cars/data/models/car_model.dart';
import 'package:pim_mobile/features/showrooms/data/models/showroom_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:qs_dart/qs_dart.dart';

part 'showroom_remote_datasource.g.dart';

abstract class ShowroomRemoteDatasource {
  Future<List<ShowroomModel>> getShowrooms(String? showroomName);
  Future<List<CarModel>> getCarsByShowroomId(
    int? showroomId,
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
class ShowroomRemoteDatasourceImpl extends _$ShowroomRemoteDatasourceImpl
    implements ShowroomRemoteDatasource {
  @override
  FutureOr<void> build() async {}

  @override
  Future<List<ShowroomModel>> getShowrooms(String? showroomName) async {
    final dioService = ref.read(dioProvider).dio();

    var params = {
      'filters': {
        'showroom_name': {
          '\$contains': showroomName,
        },
      },
    };

    String queryString = QS.encode(
      params,
      const EncodeOptions(
        skipNulls: true,
      ),
    );

    var response = await dioService.get(
      Endpoints.getPath(Endpoints.getShowrooms),
      queryParameters: QS.decode(queryString),
    );

    if (response.data['data'] != null) {
      return (response.data['data'] as List)
          .map((data) => ShowroomModel.fromJson(data))
          .toList();
    }

    return [];
  }

  @override
  Future<List<CarModel>> getCarsByShowroomId(
      int? showroomId,
      int? minPrice,
      int? maxPrice,
      String? carName,
      String? brandName,
      String? fromYear,
      String? toYear,
      int? cityId,
      {String? sort}) async {
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
      Endpoints.getCarsByShowroomId + showroomId.toString(),
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
