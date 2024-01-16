import 'package:flutter/material.dart';

class PillButton extends StatelessWidget {
  final Function() onPressed;
  final double? width;
  final double? height;
  final IconData icon;

  const PillButton({
    super.key,
    this.width,
    this.height,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: FilledButton.tonal(
        style: FilledButton.styleFrom(padding: EdgeInsets.zero),
        onPressed: onPressed,
        child: Icon(
          icon,
          size: 16,
        ),
      ),
    );
  }
}
