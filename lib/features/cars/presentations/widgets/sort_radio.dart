import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pim_mobile/core/widgets/primary_button.dart';
import 'package:pim_mobile/features/cars/domain/params/car_filter_params.dart';
import 'package:pim_mobile/features/cars/presentations/providers/car_filter_provider.dart';

class SortRadio extends HookConsumerWidget {
  const SortRadio({
    super.key,
    required this.onSubmit,
  });

  final Function(String?) onSubmit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filter = ref.watch(carFilterProvider);

    var isValueChange = useState<bool>(false);
    var selectedValue = useState<String>(filter.sort ?? 'desc');

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Urutkan',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        RadioListTile<String>(
          title: const Text('Terbaru'),
          value: "desc",
          groupValue: selectedValue.value,
          onChanged: (String? value) {
            selectedValue.value = value!;
            isValueChange.value = true;
          },
        ),
        RadioListTile<String>(
          title: const Text('Terlama'),
          value: "asc",
          groupValue: selectedValue.value,
          onChanged: (String? value) {
            selectedValue.value = value!;
            isValueChange.value = true;
          },
        ),
        isValueChange.value ? const Divider() : const SizedBox(),
        isValueChange.value
            ? Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                width: double.infinity,
                child: PrimaryButton(
                  onPressed: () {
                    ref.read(carFilterProvider.notifier).update(
                          CarFilterParams(sort: selectedValue.value),
                        );
                    context.pop();
                  },
                  label: 'Terapkan',
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
