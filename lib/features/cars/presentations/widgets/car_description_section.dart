import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pim_mobile/features/cars/domain/entities/car_entity.dart';

class CarDescriptionSection extends StatelessWidget {
  CarDescriptionSection({super.key, required this.car});

  final CarEntity car;

  final formatter = NumberFormat.simpleCurrency(locale: 'id_ID');

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    car.brandName,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    car.carName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              formatter.format(car.price),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        car.city != null
            ? Column(
                children: [
                  Text(
                    '${car.city}, ${car.province}',
                  ),
                ],
              )
            : const SizedBox.shrink(),
        const SizedBox(height: 16),
        Text(
          car.description ?? '-',
        ),
      ],
    );
  }
}
