import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final double gap;
  final String text;

  const IconText({
    super.key,
    required this.icon,
    required this.text,
    this.gap = 8,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon),
        Gap(gap),
        Text(text),
      ],
    );
  }
}
