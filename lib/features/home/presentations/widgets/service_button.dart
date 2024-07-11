import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pim_mobile/core/constants/routes.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:pim_mobile/features/home/domain/entities/service_entity.dart';

class ServiceButton extends StatelessWidget {
  const ServiceButton({
    super.key,
    required this.service,
  });

  final ServiceEntity service;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(Routes.serviceForm, extra: service.title);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        width: 220,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: UIColor.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/${service.image}',
              width: double.infinity,
              height: 220,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    service.title,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    service.description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
