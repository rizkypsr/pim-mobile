import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pim_mobile/features/home/presentations/widgets/service_menu.dart';
import 'package:pim_mobile/features/home/presentations/widgets/top_menu.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PIM',
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -120,
                child: SvgPicture.asset(
                  'assets/svg/top.svg',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Column(
                  children: [
                    SizedBox(height: 16),
                    TopMenu(),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 36),
          SizedBox(
            height: 400,
            child: ServiceMenu(),
          ),
        ],
      ),
    );
  }
}
