import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class BaseTextField extends StatelessWidget {
  const BaseTextField(
      {super.key,
      required this.name,
      required this.hint,
      this.prefixIcon,
      this.textInputAction,
      this.maxLines,
      this.validators,
      this.onSubmitted});

  final String name;
  final String hint;
  final int? maxLines;
  final Widget? prefixIcon;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validators;
  final void Function(String?)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      maxLines: maxLines,
      validator: validators,
      textInputAction: textInputAction,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        label: Text(
          hint,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
        prefixIcon: prefixIcon,
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
    );
  }
}
