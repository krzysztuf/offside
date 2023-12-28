import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Function() onPressed;
  final double size;
  final IconData icon;

  const CircleButton({
    super.key,
    this.size = 20,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size,
      child: FilledButton(
        style: FilledButton.styleFrom(padding: EdgeInsets.zero),
        onPressed: onPressed,
        child: Icon(
          icon,
          size: 14,
        ),
      ),
    );
  }
}
