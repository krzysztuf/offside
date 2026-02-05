import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/presentation/widgets/offside/being_played_indicator.dart';
import 'package:offside/presentation/widgets/offside/team_badge.dart';

class MatchRivalsAbbreviationsRow extends ConsumerWidget {
  final Match match;

  const MatchRivalsAbbreviationsRow({super.key, required this.match});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cellValue = context.textTheme.bodyLarge!;
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(child: Container()),
              if (match.homeTeam != null)
                Center(
                  child: TeamBadge(
                    team: match.homeTeam!,
                    badgeRadius: 8,
                    direction: Axis.horizontal,
                    useAbbreviation: true,
                    textStyle: cellValue,
                    mirrored: true,
                  ),
                ),
            ],
          ),
        ),
        SizedBox(
          width: 32,
          child: Center(child: '-'.styledText(cellValue)),
        ),
        Expanded(
          child: match.awayTeam != null
              ? TeamBadge(
                  team: match.awayTeam!,
                  badgeRadius: 8,
                  direction: Axis.horizontal,
                  useAbbreviation: true,
                  textStyle: cellValue,
                  mirrored: false,
                )
              : const SizedBox.shrink(),
        ),
      ],
    );
  }

  Widget buildOutcomeWidget(DateTime currentTime, BuildContext context) {
    if (match.beingPlayed(currentTime)) {
      return const BeingPlayedIndicator();
    }

    return Container();
  }
}
