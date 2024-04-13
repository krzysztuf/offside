import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/presentation/widgets/avatar.dart';
import 'package:skeletonizer/skeletonizer.dart';

class TeamBadge extends StatelessWidget {
  final Team team;
  final Axis direction;
  final bool useAbbreviation;
  final bool mirrored;
  final double badgeRadius;
  final TextStyle? textStyle;

  factory TeamBadge.dense(Team team, BuildContext context) {
    return TeamBadge(
      team: team,
      direction: Axis.horizontal,
      badgeRadius: 6,
      textStyle: context.textTheme.bodyMedium,
    );
  }

  static skeleton({double badgeRadius = 24}) {
    return Skeletonizer(
      child: TeamBadge(
        badgeRadius: badgeRadius,
        team: Team(
          name: 'Dummy',
          abbreviation: 'ASB',
          logo: 'assets/images/teams/england.png',
        ),
      ),
    );
  }

  const TeamBadge({
    super.key,
    required this.team,
    this.direction = Axis.vertical,
    this.useAbbreviation = false,
    this.mirrored = false,
    this.badgeRadius = 24,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final teamBadgeAndName = [
      Avatar(
        image: AssetImage(team.logo),
        radius: badgeRadius,
        elevation: 2,
      ),
      const Gap(8),
      buildTeamName(context),
    ];

    if (direction == Axis.horizontal) {
      return Row(
        children: mirrored ? teamBadgeAndName.reversed.toList() : teamBadgeAndName,
      );
    }

    return Column(
      children: mirrored ? teamBadgeAndName.reversed.toList() : teamBadgeAndName,
    );
  }

  Widget buildTeamName(BuildContext context) {
    return Text(
      useAbbreviation ? team.abbreviation : team.name,
      style: textStyle ?? context.widgetThemes.teamBadge.textTheme,
    );
  }
}
