import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:pim_mobile/core/commons/ui_colors.dart';
import 'package:pim_mobile/core/constants/constans.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/features/cars/domain/entities/car_entity.dart';

class CarListItem extends StatelessWidget {
  CarListItem({super.key, required this.car});

  final CarEntity car;

  final formatter = NumberFormat.simpleCurrency(locale: 'id_ID');

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push(Routes.carDetail, extra: car),
      child: Container(
        width: 170,
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: UIColor.lightGrey.withOpacity(0.4),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CachedNetworkImage(
              imageUrl: car.images.isEmpty ? '' : car.images.first,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  SizedBox(
                height: 120,
                child: Center(
                  child: CircularProgressIndicator(
                    value: downloadProgress.progress,
                    color: UIColor.blue,
                  ),
                ),
              ),
              errorWidget: (context, url, error) => const SizedBox(
                height: 120,
                child: Center(
                  child: Icon(Icons.error),
                ),
              ),
              imageBuilder: (context, imageProvider) => Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    car.brandName,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    car.carName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    formatter.format(car.price),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
