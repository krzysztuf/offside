import 'package:flutter/material.dart';

import 'inflater.dart';

class AlternativeInflater extends StatelessWidget {
  final bool useAlternative;
  final Widget Function(BuildContext context) builder;
  final Widget Function(BuildContext context) alternativeBuilder;

  const AlternativeInflater({
    super.key,
    required this.useAlternative,
    required this.builder,
    required this.alternativeBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Inflater(inflated: useAlternative, child: builder(context)),
        Inflater(inflated: !useAlternative, child: alternativeBuilder(context)),
      ],
    );
  }
}
