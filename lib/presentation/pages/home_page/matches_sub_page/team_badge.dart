import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/presentation/widgets/avatar.dart';

class TeamBadge extends StatelessWidget {
  final Team team;

  const TeamBadge({super.key, required this.team});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Avatar(
          image: AssetImage(team.logo),
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
