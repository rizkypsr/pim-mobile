import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pim_mobile/features/showrooms/domain/entities/showroom_entity.dart';

class ShowroomDescriptionSection extends StatelessWidget {
  ShowroomDescriptionSection({super.key, required this.showroom});

  final ShowroomEntity showroom;

  final formatter = NumberFormat.simpleCurrency(locale: 'id_ID');

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          showroom.showroomName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          '${showroom.city}, ${showroom.province}',
        ),
        const SizedBox(height: 16),
        const Text(
          'Hubungi',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          showroom.whatsappNumber ?? '-',
        ),
      ],
    );
  }
}
