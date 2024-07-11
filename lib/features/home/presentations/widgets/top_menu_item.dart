import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopMenuItem extends StatelessWidget {
  const TopMenuItem({
    super.key,
    required this.label,
    required this.svgPath,
    this.width = 30,
    required this.onPressed,
  });

  final String label;
  final String svgPath;
  final double width;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        height: 55,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              svgPath,
              fit: BoxFit.cover,
              width: width,
            ),
            const SizedBox(height: 6),
            Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
