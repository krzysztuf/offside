import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class HeightAnimator extends StatefulWidget {
  final Widget child;
  final Duration duration;

  const HeightAnimator({Key? key, required this.child, this.duration = const Duration(milliseconds: 300)})
      : super(key: key);

  @override
  State<HeightAnimator> createState() {
    return _HeightAnimatorState();
  }
}

class _HeightAnimatorState extends State<HeightAnimator> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _heightAnimation;
  double _oldHeight = 0.0;
  double _newHeight = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration);
    _heightAnimation =
        Tween<double>(begin: _oldHeight, end: _newHeight).animate(_controller).curve(Curves.fastEaseInToSlowEaseOut);
  }

  @override
  void didUpdateWidget(HeightAnimator oldWidget) {
    super.didUpdateWidget(oldWidget);
    _measureHeight();
  }

  void _measureHeight() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      final RenderBox renderBox = context.findRenderObject() as RenderBox;
      setState(() {
        _oldHeight = _newHeight;
        _newHeight = renderBox.size.height;

        log('old: $_oldHeight, new: $_newHeight');

        _heightAnimation = Tween<double>(begin: _oldHeight, end: _newHeight).animate(_controller)
          ..addListener(() => setState(() {}));
        _controller
          ..reset()
          ..forward();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _heightAnimation.value,
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
