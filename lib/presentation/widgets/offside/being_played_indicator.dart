import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';

class BeingPlayedIndicator extends StatelessWidget {
  const BeingPlayedIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final foreground = context.widgetThemes.sharedWidgets.beingPlayed.foreground;
    return Row(
      children: [
        LoadingAnimationWidget.waveDots(
          color: foreground,
          size: 16,
        ),
        const Gap(8),
        Text(
          'TRWA',
          style: context.textTheme.bodySmall!.copyWith(color: foreground),
        ),
      ],
    );
  }
}
