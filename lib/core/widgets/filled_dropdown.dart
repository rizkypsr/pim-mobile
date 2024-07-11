import 'package:drop_down_list/drop_down_list.dart';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pim_mobile/features/cities/presentations/cities_notifier.dart';

class FilledDropdown extends HookConsumerWidget {
  const FilledDropdown({
    super.key,
    required this.label,
    required this.name,
    this.hint,
    this.maxLines,
    this.required = false,
  });

  final String label;
  final String name;
  final String? hint;
  final int? maxLines;
  final bool required;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final citiesRef = ref.watch(citiesProvider.notifier);

    final selectedCity = useState<String?>(null);

    void chooseCity(FormFieldState<dynamic> field) {
      DropDownState(
        DropDown(
          bottomSheetTitle: const Text(
            'Pilih Kota',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          submitButtonChild: const Text(
            'Done',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          data: citiesRef.getSelectedListItem(),
          selectedItems: (List<SelectedListItem> selectedList) {
            selectedCity.value = selectedList.first.name;
            field.didChange(selectedList.first.value);
          },
        ),
      ).showModal(context);
    }

    return FormBuilderField(
      name: name,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
      ]),
      builder: (FormFieldState<dynamic> field) {
        return Column(
          children: [
            Row(
              children: [
                Text(
                  label,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w600),
                ),
                if (required)
                  const Text(' *', style: TextStyle(color: Colors.red)),
              ],
            ),
            const SizedBox(height: 16),
            InputDecorator(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(1),
                error: field.errorText != null
                    ? Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Text(
                          field.errorText!,
                          style: TextStyle(
                            color: Colors.red.shade900,
                            fontSize: 12,
                          ),
                        ),
                      )
                    : null,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey[200]!,
                    width: 2,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                focusedErrorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        chooseCity(field);
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.grey[100],
                        foregroundColor: Colors.grey[600],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        alignment: Alignment.centerLeft,
                        minimumSize: const Size.fromHeight(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(selectedCity.value ?? hint ?? ''),
                          const Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
