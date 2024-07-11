import 'package:flutter/material.dart';

class YearDialog extends StatelessWidget {
  const YearDialog({
    super.key,
    required this.title,
    required this.onChanged,
    this.year,
  });

  final String title;
  final String? year;
  final void Function(DateTime) onChanged;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: SizedBox(
        width: 300,
        height: 300,
        child: YearPicker(
          firstDate: DateTime(DateTime.now().year - 100, 1),
          lastDate: DateTime(DateTime.now().year),
          selectedDate:
              year == null ? DateTime.now() : DateTime(int.parse(year!)),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
