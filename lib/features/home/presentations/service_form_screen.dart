import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:pim_mobile/core/commons/ui_colors.dart';
import 'package:pim_mobile/core/widgets/filled_dropdown.dart';
import 'package:pim_mobile/core/widgets/filled_text_field.dart';
import 'package:pim_mobile/core/widgets/main_app_bar.dart';
import 'package:pim_mobile/core/widgets/primary_button.dart';
import 'package:pim_mobile/features/home/extensions/service_type.dart';
import 'package:pim_mobile/features/home/providers/service_notifier.dart';
import 'package:tap_debouncer/tap_debouncer.dart';

class ServiceFormScreen extends ConsumerStatefulWidget {
  const ServiceFormScreen({super.key, required this.label});

  final String label;

  @override
  ConsumerState<ServiceFormScreen> createState() => _ServiceFormScreenState();
}

class _ServiceFormScreenState extends ConsumerState<ServiceFormScreen> {
  final formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final submitServiceRef = ref.read(serviceNotifierProvider.notifier);

    return Scaffold(
      appBar: MainAppBar.filled(title: widget.label),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: FormBuilder(
            key: formKey,
            child: Column(
              children: [
                const FilledTextField(
                  required: true,
                  name: 'name',
                  hint: 'Masukan nama',
                  label: 'Nama',
                ),
                const SizedBox(height: 16),
                FilledTextField(
                  required: true,
                  name: 'phone',
                  hint: 'Masukan no hp',
                  label: 'No Hp',
                  validators: [
                    FormBuilderValidators.match(
                      "^(\\+62|62|0)8[1-9][0-9]{6,9}\$",
                      errorText: 'No Hp tidak valid. Contoh: 081234567890',
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const FilledTextField(
                  required: true,
                  name: 'address',
                  hint: 'Masukan alamat rumah',
                  label: 'Alamat',
                ),
                const SizedBox(height: 16),
                const FilledTextField(
                  required: true,
                  name: 'car_description',
                  hint: 'Masukan deskripsi',
                  maxLines: 3,
                  label: 'Deskripsi',
                ),
                const SizedBox(height: 16),
                const FilledDropdown(
                  required: true,
                  name: 'car_id',
                  label: 'Kota',
                  hint: 'Pilih kota',
                ),
                const SizedBox(height: 42),
                SizedBox(
                  width: double.infinity,
                  child: TapDebouncer(
                    onTap: () async {
                      if (formKey.currentState!.saveAndValidate()) {
                        debugPrint(formKey.currentState?.value.toString());

                        final values = formKey.currentState?.value;

                        await submitServiceRef.submitService(
                          int.parse(values!['car_id']),
                          values['name'],
                          values['address'],
                          values['phone'],
                          widget.label.serviceType,
                          values['car_description'],
                        );

                        if (mounted) {
                          Navigator.of(context).pop();
                        }
                      }
                    },
                    builder: (BuildContext context, TapDebouncerFunc? onTap) {
                      return PrimaryButton(
                        onPressed: onTap,
                        label: 'Kirim',
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
