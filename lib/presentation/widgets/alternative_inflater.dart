import 'package:flutter/material.dart';

import 'inflater.dart';

class AlternativeInflater extends StatelessWidget {
  final double scaleFactor;
  final Duration duration;

  final bool useAlternative;
  final Widget Function() builder;
  final Widget Function() alternativeBuilder;

  final AlignmentGeometry alignment;

  const AlternativeInflater({
    super.key,
    this.scaleFactor = 0.95,
    this.duration = const Duration(milliseconds: 400),
    this.alignment = Alignment.center,
    required this.useAlternative,
    required this.builder,
    required this.alternativeBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: alignment,
      children: [
        Inflater(
          inflated: useAlternative,
          scaleFactor: scaleFactor,
          duration: duration,
          child: alternativeBuilder(),
        ),
        Inflater(
          inflated: !useAlternative,
          scaleFactor: scaleFactor,
          duration: duration,
          child: builder(),
        ),
      ],
    );
  }
}
