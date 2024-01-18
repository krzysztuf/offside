import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/presentation/widgets/square.dart';

class TeamBadge extends StatelessWidget {
  final Team team;

  const TeamBadge({super.key, required this.team});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Square(
          size: 48,
          child: Material(
            elevation: 4,
            shape: CircleBorder(
              side: BorderSide(
                width: 1,
                color: Colors.grey.shade600,
                strokeAlign: 0.5,
              ),
            ),
            color: Colors.transparent,
            child: CircleAvatar(
              backgroundImage: AssetImage(team.logo),
              // backgroundColor: context.colorScheme.secondaryContainer,
              // child: Text(
              //   team.abbreviation,
              //   style: context.textTheme.bodySmall!.copyWith(
              //     color: context.colorScheme.onTertiaryContainer,
              //   ),
              // ),
            ),
          ),
        ),
        const Gap(8),
        Text(
          team.name,
          style: context.widgetThemes.teamBadge.textTheme,
        ),
      ],
    );
  }
}
