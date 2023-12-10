import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/models/team.dart';
import 'package:offside/presentation/widgets/square.dart';

class TeamBadge extends StatelessWidget {
  final Team team;

  const TeamBadge({super.key, required this.team});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Square(
          size: 40,
          child: Material(
            elevation: 2,
            shape: CircleBorder(
              side: BorderSide(
                color: context.colorScheme.outline.withOpacity(0.2),
              ),
            ),
            color: Colors.transparent,
            child: CircleAvatar(
              backgroundColor: context.colorScheme.tertiaryContainer,
              child: Text(
                team.abbreviation,
                style: context.textTheme.bodySmall!.copyWith(
                  color: context.colorScheme.onTertiaryContainer,
                ),
              ),
            ),
          ),
        ),
        const Gap(8),
        Text(
          team.name,
          style: context.textTheme.titleMedium,
        ),
      ],
    );
  }
}
