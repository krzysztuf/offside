import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:simple_animations/animation_builder/custom_animation_builder.dart';
import 'package:supercharged/supercharged.dart';

import 'enabled.dart';

class Inflater extends StatefulWidget {
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
  State<Inflater> createState() => _InflaterState();
}

class _InflaterState extends State<Inflater> {
  late bool childEnabled;

  @override
  void initState() {
    enableDisabledChildOnInflated();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomAnimationBuilder(
      tween: 0.0.tweenTo(1.0),
      duration: 400.milliseconds,
      curve: widget.inflated ? Curves.easeInOutBack : Curves.fastOutSlowIn,
      control: widget.inflated ? Control.play : Control.playReverse,
      builder: (context, value, child) {
        return Opacity(
          opacity: clampDouble(value, 0, 1),
          child: Transform.scale(
            scale: widget.scaleFactor + value * (1 - widget.scaleFactor),
            child: Enabled(
              when: widget.inflated,
              child: widget.child,
            ),
          ),
        );
      },
      onCompleted: () => enableDisabledChildOnInflated(),
    );
  }

  void enableDisabledChildOnInflated() {
    setState(() => childEnabled = widget.inflated);
  }
}
