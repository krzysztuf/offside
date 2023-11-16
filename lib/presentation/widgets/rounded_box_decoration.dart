import 'package:flutter/material.dart';
import 'package:offside/core/extensions/theme/color_scheme_extensions.dart';

class RoundedBoxDecoration extends BoxDecoration {
  RoundedBoxDecoration(BuildContext context, {super.color, double radius = 4.0, bool noShadow = false})
      : super(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          boxShadow: noShadow
              ? null
              : [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.lightShadow,
                    spreadRadius: 0,
                    blurRadius: 0.5,
                    offset: const Offset(0, 0.5),
                  ),
                ],
        );
}
