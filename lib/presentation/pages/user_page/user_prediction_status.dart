import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/presentation/widgets/fetchable_builder.dart';
import 'package:offside/presentation/widgets/offside/being_played_indicator.dart';
import 'package:offside/presentation/widgets/offside/team_badge.dart';

class UserPredictionStatus extends ConsumerWidget {
  final Match match;
  final Bet? userBet;

  const UserPredictionStatus({
    super.key,
    required this.match,
    required this.userBet,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        SizedBox(
          width: 72,
          child: Row(
            children: [
              Expanded(child: Container()),
              FetchableBuilder(
                fetchable: match.homeTeam,
                waiting: () => LoadingAnimationWidget.waveDots(
                  color: context.colorScheme.primary,
                  size: 24,
                ),
                child: (homeTeam) => Center(
                  child: TeamBadge(
                    team: homeTeam,
                    badgeRadius: 8,
                    direction: Axis.horizontal,
                    useAbbreviation: true,
                    mirrored: true,
                    textStyle: context.widgetThemes.userBets.cellValue,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 32,
          child: Center(child: '-'.styledText(context.widgetThemes.userBets.cellValue)),
        ),
        FetchableBuilder(
          fetchable: match.awayTeam,
          waiting: () => LoadingAnimationWidget.waveDots(
            color: context.colorScheme.primary,
            size: 24,
          ),
          child: (homeTeam) => TeamBadge(
            team: homeTeam,
            badgeRadius: 8,
            direction: Axis.horizontal,
            useAbbreviation: true,
            textStyle: context.widgetThemes.userBets.cellValue,
          ),
        ),
      ],
    );
  }

  Widget buildOutcomeWidget(DateTime currentTime, BuildContext context) {
    if (match.beingPlayed(currentTime)) {
      return const BeingPlayedIndicator();
    }

    return Container();
    // if (match.result == null) {}
  }
}
