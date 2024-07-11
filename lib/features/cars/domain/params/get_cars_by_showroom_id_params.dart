import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_cars_by_showroom_id_params.freezed.dart';
part 'get_cars_by_showroom_id_params.g.dart';

@freezed
class GetCarsByShowroomIdParams with _$GetCarsByShowroomIdParams {
  const factory GetCarsByShowroomIdParams({
    int? showroomId,
    int? minPrice,
    int? maxPrice,
    String? brandName,
    String? year,
    int? cityId,
    @Default('desc') String? sort,
  }) = _GetCarsByShowroomIdParams;

  factory GetCarsByShowroomIdParams.fromJson(Map<String, dynamic> json) =>
      _$GetCarsByShowroomIdParamsFromJson(json);
}
