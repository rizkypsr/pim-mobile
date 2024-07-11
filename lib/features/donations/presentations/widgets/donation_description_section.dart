import 'package:flutter/material.dart';
import 'package:pim_mobile/features/donations/domain/entities/donation_entity.dart';

class DonationDescriptionSection extends StatelessWidget {
  const DonationDescriptionSection({super.key, required this.donation});

  final DonationEntity donation;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          donation.subtitle!,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          donation.title!,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          donation.description ?? '-',
        ),
      ],
    );
  }
}
