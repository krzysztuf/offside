import 'package:flutter/material.dart';

class Enabled extends StatelessWidget {
  final bool enabled;
  final double opacity;
  final Widget child;

  const Enabled({
    super.key,
    required this.enabled,
    required this.child,
    this.opacity = 0.4,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !enabled,
      child: Opacity(
        opacity: enabled ? 1 : opacity,
        child: child,
      ),
    );
  }
}
