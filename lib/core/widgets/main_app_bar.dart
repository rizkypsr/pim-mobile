import 'package:flutter/material.dart';
import 'package:pim_mobile/core/core.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({
    super.key,
    required this.title,
    this.backgroundColor,
    this.foregroundColor,
    // this.surfaceTintColor,
  });

  const MainAppBar.light({
    super.key,
    required this.title,
    this.backgroundColor = Colors.white,
    this.foregroundColor = UIColor.black,
    // this.surfaceTintColor = UIColor.black,
  });

  const MainAppBar.filled({
    super.key,
    required this.title,
    this.backgroundColor = UIColor.blue,
    this.foregroundColor = Colors.white,
    // this.surfaceTintColor = Colors.transparent,
  });

  final String title;
  final Color? backgroundColor;
  final Color? foregroundColor;
  // final Color? surfaceTintColor;

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      // surfaceTintColor: surfaceTintColor,
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: foregroundColor,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
