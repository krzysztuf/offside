import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:simple_animations/animation_builder/custom_animation_builder.dart';
import 'package:supercharged/supercharged.dart';

import 'enabled.dart';

class Inflater extends StatelessWidget {
  final Widget child;
  final bool inflated;
  final double scaleFactor;
  final Duration duration;

  const Inflater({
    super.key,
    required this.inflated,
    required this.child,
    this.scaleFactor = 0.4,
    this.duration = const Duration(milliseconds: 400),
  });

  @override
  Widget build(BuildContext context) {
    return CustomAnimationBuilder(
      tween: 0.0.tweenTo(1.0),
      duration: duration,
      curve: inflated ? Curves.fastEaseInToSlowEaseOut : Curves.fastOutSlowIn,
      control: inflated ? Control.play : Control.playReverse,
      builder: (context, value, child) {
        return Opacity(
          opacity: clampDouble(value, 0, 1),
          child: Transform.scale(
            scale: scaleFactor + value * (1 - scaleFactor),
            child: Enabled(
              enabled: inflated,
              child: this.child,
            ),
          ),
        );
      },
    );
  }
}
