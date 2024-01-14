import 'package:flutter/material.dart';

import 'inflater.dart';

class AlternativeInflater extends StatelessWidget {
  final double scaleFactor;
  final Duration duration;

  final bool useAlternative;
  final Widget Function() builder;
  final Widget Function() alternativeBuilder;

  const AlternativeInflater({
    super.key,
    this.scaleFactor = 0.4,
    this.duration = const Duration(milliseconds: 400),
    required this.useAlternative,
    required this.builder,
    required this.alternativeBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Inflater(
          inflated: !useAlternative,
          scaleFactor: scaleFactor,
          duration: duration,
          child: builder(),
        ),
        Inflater(
          inflated: useAlternative,
          scaleFactor: scaleFactor,
          duration: duration,
          child: alternativeBuilder(),
        ),
      ],
    );
  }
}
