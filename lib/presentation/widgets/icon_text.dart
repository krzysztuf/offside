import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final double gap;
  final double iconSize;
  final String text;

  const IconText({
    super.key,
    required this.icon,
    this.iconSize = 18,
    required this.text,
    this.gap = 8,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: iconSize),
        Gap(gap),
        Text(text),
      ],
    );
  }
}
