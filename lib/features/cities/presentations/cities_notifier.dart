import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/features/cities/domain/entities/city_entity.dart';
import 'package:pim_mobile/features/cities/domain/usecases/get_cities.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cities_notifier.g.dart';

@riverpod
class Cities extends _$Cities {
  @override
  Future<List<CityEntity>> build() async {
    return await getCities();
  }

  Future<List<CityEntity>> getCities() async {
    final getCityUsecase =
        await ref.read(getCitiesUseCaseProvider).call(NoParams());

    return getCityUsecase.fold((failure) {
      throw Exception("Failed to get cities: $failure");
    }, (data) {
      return data;
    });
  }

  List<SelectedListItem> getSelectedListItem() {
    List<SelectedListItem> list = [];

    if (state.hasValue) {
      list = state.value!.map((city) {
        return SelectedListItem(
            name: city.cityName!, value: city.id.toString());
      }).toList();
    }

    return list;
  }
}
