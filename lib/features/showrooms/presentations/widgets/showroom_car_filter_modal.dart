import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/core/widgets/primary_button.dart';
import 'package:pim_mobile/features/cars/presentations/widgets/year_dialog.dart';
import 'package:pim_mobile/features/showrooms/domain/params/showroom_car_filter_params.dart';
import 'package:pim_mobile/features/showrooms/presentations/providers/showroom_car_filter_provider.dart';

class ShowroomCarFilterModal extends HookConsumerWidget {
  const ShowroomCarFilterModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final carFilter = ref.watch(showroomCarFilterProvider);

    final minPriceController = useTextEditingController(
      text: carFilter.minPrice?.toString(),
    );
    final maxPriceController = useTextEditingController(
      text: carFilter.maxPrice?.toString(),
    );
    final brandNameController = useTextEditingController(
      text: carFilter.brandName,
    );

    final filledField = useState<ShowroomCarFilterParams>(carFilter);

    void resetFilter() {
      minPriceController.clear();
      maxPriceController.clear();
      brandNameController.clear();

      ref
          .read(showroomCarFilterProvider.notifier)
          .update(ShowroomCarFilterParams.initial());
      Navigator.pop(context);
    }

    void onSubmit() {
      ref.read(showroomCarFilterProvider.notifier).update(filledField.value);
      Navigator.pop(context);
    }

    bool isFilterEmpty() {
      return filledField.value == ShowroomCarFilterParams.initial();
    }

    return SingleChildScrollView(
      controller: ModalScrollController.of(context),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Filter',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Harga',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 48,
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: minPriceController,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.done,
                        decoration: const InputDecoration(
                          hintText: 'Min',
                        ),
                        onChanged: (String value) {
                          filledField.value = filledField.value.copyWith(
                            minPrice:
                                value.isNotEmpty ? int.parse(value) : null,
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextFormField(
                        controller: maxPriceController,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.done,
                        decoration: const InputDecoration(
                          hintText: 'Max',
                        ),
                        onChanged: (String value) {
                          filledField.value = filledField.value.copyWith(
                            maxPrice:
                                value.isNotEmpty ? int.parse(value) : null,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Merk',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                controller: brandNameController,
                textInputAction: TextInputAction.done,
                onChanged: (String value) {
                  filledField.value = filledField.value.copyWith(
                    brandName: value,
                  );
                },
              ),
              const SizedBox(height: 8),
              const Text(
                'Tahun',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return YearDialog(
                              title: 'Dari Tahun',
                              year: filledField.value.fromYear,
                              onChanged: (DateTime dateTime) {
                                filledField.value = filledField.value.copyWith(
                                  fromYear: dateTime.year.toString(),
                                );
                                Navigator.pop(context);
                              },
                            );
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[50],
                        foregroundColor: UIColor.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(filledField.value.fromYear == null
                          ? 'Dari Tahun'
                          : filledField.value.fromYear!),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return YearDialog(
                              title: 'Ke Tahun',
                              year: filledField.value.toYear,
                              onChanged: (DateTime dateTime) {
                                filledField.value = filledField.value.copyWith(
                                  toYear: dateTime.year.toString(),
                                );
                                Navigator.pop(context);
                              },
                            );
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[50],
                        foregroundColor: UIColor.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(filledField.value.toYear == null
                          ? 'Ke Tahun'
                          : filledField.value.toYear!),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              !isFilterEmpty() ? const Divider() : const SizedBox(),
              !isFilterEmpty()
                  ? Row(
                      children: [
                        Expanded(
                          child: PrimaryButton(
                            onPressed: onSubmit,
                            label: 'Terapkan',
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: resetFilter,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey[200],
                              foregroundColor: UIColor.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text('Reset'),
                          ),
                        ),
                      ],
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
