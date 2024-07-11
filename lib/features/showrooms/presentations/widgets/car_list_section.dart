import 'package:flutter/material.dart';
import 'package:pim_mobile/features/cars/domain/entities/car_entity.dart';
import 'package:pim_mobile/features/showrooms/presentations/widgets/car_list_item.dart';

class CarListSection extends StatelessWidget {
  const CarListSection({super.key, required this.cars});

  final List<CarEntity> cars;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Daftar Mobil',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        cars.isEmpty ? const SizedBox(height: 16) : const SizedBox(),
        cars.isNotEmpty
            ? Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 16,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: cars.length,
                  itemBuilder: (context, index) {
                    final car = cars[index];
                    return CarListItem(
                      car: car,
                    );
                  },
                ),
              )
            : const Center(
                child: Text('Tidak ada mobil yang tersedia'),
              ),
      ],
    );
  }
}
