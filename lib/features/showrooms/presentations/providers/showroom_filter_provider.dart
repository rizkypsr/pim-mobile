import 'package:pim_mobile/features/showrooms/domain/params/showroom_filter_params.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'showroom_filter_provider.g.dart';

@riverpod
class ShowroomFilter extends _$ShowroomFilter {
  @override
  ShowroomFilterParams build() {
    return const ShowroomFilterParams();
  }

  void update(ShowroomFilterParams filter) {
    if (filter == ShowroomFilterParams.initial()) {
      state = filter;
    } else if (filter != state) {
      state = filter.copyWith(
        showroomName: filter.showroomName ?? state.showroomName,
      );
    }
  }
}
