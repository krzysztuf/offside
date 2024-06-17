import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final ImageProvider<Object>? image;
  final Widget? child;
  final double elevation;
  final double radius;

  const Avatar({
    super.key,
    this.image,
    this.child,
    this.radius = 24,
    this.elevation = 4,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      shape: CircleBorder(
        side: BorderSide(
          width: 0.5,
          color: Colors.grey.shade400,
          strokeAlign: 0.5,
        ),
      ),
      // color: Colors.transparent,
      child: CircleAvatar(
        backgroundImage: image,
        radius: radius,
        child: child,
      ),
    );
  }
}
