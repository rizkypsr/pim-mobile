import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/core/widgets/base_text_field.dart';
import 'package:pim_mobile/core/widgets/chip_button.dart';
import 'package:pim_mobile/core/widgets/error_box.dart';
import 'package:pim_mobile/core/widgets/main_app_bar.dart';
import 'package:pim_mobile/features/cars/domain/params/car_filter_params.dart';
import 'package:pim_mobile/features/cars/presentations/providers/car_filter_provider.dart';
import 'package:pim_mobile/features/cars/presentations/widgets/car_filter_modal.dart';
import 'package:pim_mobile/features/cars/presentations/widgets/car_list_item.dart';
import 'package:pim_mobile/features/cars/presentations/widgets/sort_radio.dart';
import 'package:pim_mobile/features/showrooms/domain/params/showroom_car_filter_params.dart';
import 'package:pim_mobile/features/showrooms/domain/params/showroom_filter_params.dart';
import 'package:pim_mobile/features/showrooms/presentations/providers/showroom_car_filter_provider.dart';
import 'package:pim_mobile/features/showrooms/presentations/providers/showroom_car_provider.dart';
import 'package:pim_mobile/features/showrooms/presentations/providers/showroom_filter_provider.dart';
import 'package:pim_mobile/features/showrooms/presentations/widgets/showroom_car_filter_modal.dart';

class ShowroomCarScreen extends ConsumerWidget {
  const ShowroomCarScreen({
    super.key,
    required this.showroomId,
  });

  final int showroomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final carsRef = ref.watch(getCarsByShowroomProvider(showroomId));

    return Scaffold(
      appBar: const MainAppBar.light(title: "Daftar Mobil"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: BaseTextField(
                    name: 'search',
                    hint: 'Cari mobil...',
                    prefixIcon: const Icon(Icons.search),
                    textInputAction: TextInputAction.search,
                    onSubmitted: (value) {
                      ref.read(showroomCarFilterProvider.notifier).update(
                            ShowroomCarFilterParams(carName: value),
                          );
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Row(
                  children: [
                    ChipButton(
                      child: const Icon(
                        Icons.sort,
                        color: UIColor.darkGrey,
                      ),
                      onPressed: () {
                        showMaterialModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return SafeArea(
                              top: false,
                              child: SortRadio(
                                filter:
                                    ref.watch(showroomCarFilterProvider).sort,
                                onSubmit: (String? value) {
                                  ref
                                      .read(showroomCarFilterProvider.notifier)
                                      .update(
                                        ShowroomCarFilterParams(sort: value),
                                      );
                                  Navigator.pop(context);
                                },
                              ),
                            );
                          },
                        );
                      },
                    ),
                    const SizedBox(width: 8),
                    ChipButton(
                      child: const Icon(
                        Icons.filter_alt_outlined,
                        color: UIColor.darkGrey,
                      ),
                      onPressed: () {
                        showBarModalBottomSheet(
                          context: context,
                          builder: (context) => const ShowroomCarFilterModal(),
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: carsRef.when(
              data: (cars) {
                if (cars.isEmpty) {
                  return const Center(child: Text('Tidak ada data mobil'));
                }

                return GridView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 0.65,
                  ),
                  itemCount: cars.length,
                  itemBuilder: (context, index) {
                    final car = cars[index];
                    return CarListItem(car: car);
                  },
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, st) {
                return ErrorBox(message: (error as Failure).message);
              },
            ),
          ),
        ],
      ),
    );
  }
}
