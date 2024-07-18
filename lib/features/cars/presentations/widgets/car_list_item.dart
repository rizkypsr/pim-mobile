import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:pim_mobile/core/commons/ui_colors.dart';
import 'package:pim_mobile/core/constants/routes.dart';
import 'package:pim_mobile/features/cars/domain/entities/car_entity.dart';

class CarListItem extends StatelessWidget {
  CarListItem({
    super.key,
    required this.car,
  });

  final CarEntity car;

  final formatter = NumberFormat.simpleCurrency(locale: 'id_ID');

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(Routes.carDetail, extra: car);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(
            imageUrl: car.images.firstOrNull ?? '',
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                Center(
              child: CircularProgressIndicator(
                value: downloadProgress.progress,
                color: UIColor.blue,
              ),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            height: 150,
            width: double.infinity,
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '${car.carName} (${car.brandName})',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            formatter.format(car.price),
            style: const TextStyle(fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 8),
          car.city != null
              ? Text(
                  'Kota ${car.city}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 13),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
