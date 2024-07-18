import 'package:pim_mobile/features/showrooms/domain/entities/showroom_entity.dart';
import 'package:pim_mobile/features/showrooms/domain/usecases/get_showrooms.dart';
import 'package:pim_mobile/features/showrooms/presentations/providers/showroom_filter_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'showroom_provider.g.dart';

@riverpod
Future<List<ShowroomEntity>> getShowrooms(GetShowroomsRef ref) async {
  final filter = ref.watch(showroomFilterProvider);

  final getCarUsecase =
      await ref.read(getShowroomUsecaseProvider).call(null, filter);

  return getCarUsecase.fold((failure) {
    throw failure;
  }, (data) {
    return data;
  });
}
