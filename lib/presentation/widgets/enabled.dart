import 'package:flutter/material.dart';

class Enabled extends StatelessWidget {
  final bool when;
  final double opacity;
  final Widget child;

  const Enabled({
    super.key,
    required this.when,
    required this.child,
    this.opacity = 0.6,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !when,
      child: Opacity(
        opacity: when ? 1 : opacity,
        child: child,
      ),
    );
  }
}
