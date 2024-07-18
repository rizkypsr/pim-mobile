import 'package:pim_mobile/features/cars/domain/entities/car_entity.dart';
import 'package:pim_mobile/features/showrooms/domain/usecases/get_cars_by_showroom_id.dart';
import 'package:pim_mobile/features/showrooms/presentations/providers/showroom_car_filter_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'showroom_car_provider.g.dart';

@riverpod
Future<List<CarEntity>> getCarsByShowroom(
    GetCarsByShowroomRef ref, int showroomId) async {
  final filter = ref.watch(showroomCarFilterProvider);

  final getCarUsecase = await ref
      .read(getCarsByShowroomIdUseCaseProvider)
      .call(showroomId, filter);

  return getCarUsecase.fold((failure) {
    throw failure;
  }, (data) {
    return data;
  });
}
