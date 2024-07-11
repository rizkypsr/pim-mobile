import 'package:pim_mobile/core/constants/endpoints.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/features/showrooms/data/models/showroom_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'showroom_remote_datasource.g.dart';

abstract class ShowroomRemoteDatasource {
  Future<List<ShowroomModel>> getShowrooms();
}

@riverpod
class ShowroomRemoteDatasourceImpl extends _$ShowroomRemoteDatasourceImpl
    implements ShowroomRemoteDatasource {
  @override
  FutureOr<void> build() async {}

  @override
  Future<List<ShowroomModel>> getShowrooms() async {
    final dioService = ref.read(dioProvider).dio();

    var response = await dioService.get(
      Endpoints.getPath(Endpoints.getShowrooms),
    );

    if (response.data['data'] != null) {
      return (response.data['data'] as List)
          .map((data) => ShowroomModel.fromJson(data))
          .toList();
    }

    return [];
  }
}
