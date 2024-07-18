import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pim_mobile/core/constants/constans.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/features/cars/domain/entities/car_entity.dart';
import 'package:pim_mobile/features/showrooms/presentations/widgets/car_list_item.dart';

class CarListSection extends StatelessWidget {
  const CarListSection({
    super.key,
    required this.showroomId,
    required this.cars,
  });

  final int showroomId;
  final List<CarEntity> cars;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Daftar Mobil',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            TextButton(
              onPressed: () {
                context.push(Routes.showroomCars, extra: showroomId);
              },
              child: Text(
                'Lihat Semua',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: UIColor.blue,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ],
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
