import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';

class MutedInformationLabel extends StatelessWidget {
  final IconData icon;
  final String text;

  const MutedInformationLabel({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 16,
          color: context.colorScheme.outline,
        ),
        const Gap(8),
        Text(
          text,
          style: context.textTheme.bodySmall,
        ),
      ],
    );
  }
}
