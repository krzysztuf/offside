import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/presentation/widgets/fetchable_builder.dart';
import 'package:offside/presentation/widgets/offside/team_badge.dart';

class UserPredictionStatus extends ConsumerWidget {
  final Match match;
  final List<Bet> userBets;

  const UserPredictionStatus({
    super.key,
    required this.match,
    required this.userBets,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Row(
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
                  child: (homeTeam) => TeamBadge(
                    team: homeTeam,
                    badgeRadius: 10,
                    direction: Axis.horizontal,
                    useAbbreviation: true,
                    mirrored: true,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 80,
            child: Center(child: buildScorePrediction(match, userBets, context)),
          ),
          FetchableBuilder(
            fetchable: match.awayTeam,
            waiting: () => LoadingAnimationWidget.waveDots(
              color: context.colorScheme.primary,
              size: 24,
            ),
            child: (homeTeam) => TeamBadge(
              team: homeTeam,
              badgeRadius: 10,
              direction: Axis.horizontal,
              useAbbreviation: true,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildScorePrediction(Match match, List<Bet> bets, BuildContext context) {
    final bet = bets.firstWhereOrNull((bet) {
      return bet.matchId == match.id;
    });

    final scoreString = bet != null ? '${bet.prediction.home} : ${bet.prediction.away}' : '- : -';
    return Opacity(
      opacity: bet != null ? 1 : 0.5,
      child: Text(
        scoreString,
        style: context.textTheme.titleLarge,
      ),
    );
  }
}
