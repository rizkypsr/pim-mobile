import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pim_mobile/core/constants/routes.dart';
import 'package:pim_mobile/features/home/presentations/widgets/top_menu_item.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TopMenuItem(
            label: 'Mobil Kita',
            svgPath: 'assets/svg/car_icon.svg',
            width: 36,
            onPressed: () {
              context.push(Routes.cars);
            },
          ),
          TopMenuItem(
            label: 'Showroom Kita',
            svgPath: 'assets/svg/showroom_icon.svg',
            onPressed: () {
              context.push(Routes.showrooms);
            },
          ),
          TopMenuItem(
            label: 'Yuk Donasi',
            svgPath: 'assets/svg/donate_icon.svg',
            onPressed: () {
              context.push(Routes.donations);
            },
          ),
        ],
      ),
    );
  }
}
