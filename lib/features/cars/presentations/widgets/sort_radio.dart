import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pim_mobile/core/widgets/primary_button.dart';

class SortRadio extends HookWidget {
  const SortRadio({
    super.key,
    required this.filter,
    required this.onSubmit,
  });

  final dynamic filter;
  final Function(String?) onSubmit;

  @override
  Widget build(BuildContext context) {
    var isValueChange = useState<bool>(false);
    var selectedValue = useState<String>(filter ?? 'desc');

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
                    onSubmit(selectedValue.value);
                  },
                  label: 'Terapkan',
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
