import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/features/showrooms/domain/entities/showroom_entity.dart';
import 'package:pim_mobile/features/showrooms/domain/usecases/get_showrooms.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'showrooms_notifier.g.dart';

@riverpod
class Showroom extends _$Showroom {
  @override
  Future<List<ShowroomEntity>> build() async {
    return await getShowrooms();
  }

  Future<List<ShowroomEntity>> getShowrooms() async {
    final getCarUsecase =
        await ref.read(getShowroomUsecaseProvider).call(NoParams());

    return getCarUsecase.fold((failure) {
      throw failure;
    }, (data) {
      return data;
    });
  }
}
