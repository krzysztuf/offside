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
          child: Container(
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.colorScheme.onTertiaryContainer,
            ),
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
