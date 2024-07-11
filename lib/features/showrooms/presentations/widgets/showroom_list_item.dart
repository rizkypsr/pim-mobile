import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:pim_mobile/core/constants/routes.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/features/showrooms/domain/entities/showroom_entity.dart';

class ShowroomListItem extends StatelessWidget {
  ShowroomListItem({
    super.key,
    required this.showroom,
  });

  final ShowroomEntity showroom;

  final formatter = NumberFormat.simpleCurrency(locale: 'id_ID');

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(Routes.showroomDetail, extra: showroom);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(
            imageUrl: showroom.images.firstOrNull ?? '',
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
            "Showroom ${showroom.showroomName}",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Kota ${showroom.city}",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
