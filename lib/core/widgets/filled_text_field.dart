import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FilledTextField extends StatelessWidget {
  const FilledTextField({
    super.key,
    this.label,
    required this.name,
    this.hint,
    this.maxLines,
    this.required = false,
    this.validators = const [],
  });

  final String? label;
  final String name;
  final String? hint;
  final int? maxLines;
  final bool required;
  final List<String? Function(String?)> validators;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label != null
            ? Row(
                children: [
                  Text(
                    label!,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  if (required)
                    const Text(' *', style: TextStyle(color: Colors.red)),
                ],
              )
            : const SizedBox(),
        const SizedBox(height: 16),
        FormBuilderTextField(
          name: name,
          maxLines: maxLines,
          validator: FormBuilderValidators.compose([
            if (required) FormBuilderValidators.required(),
            ...validators,
          ]),
          decoration: InputDecoration(
            label: Text(
              hint!,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            filled: true,
            fillColor: Colors.grey[100],
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey[200]!,
                width: 2,
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
