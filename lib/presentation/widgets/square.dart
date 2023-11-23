import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final double size;
  final Widget child;

  const Square({super.key, required this.size, required this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: child,
    );
  }
}