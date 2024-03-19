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
  final Bet? userBet;

  const UserPredictionStatus({
    super.key,
    required this.match,
    required this.userBet,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Opacity(
        opacity: userBet != null ? 1 : 0.5,
        child: Row(
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
              child: Center(child: buildScorePrediction(context)),
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
      ),
    );
  }

  Widget buildScorePrediction(BuildContext context) {
    final scoreString = userBet != null ? '${userBet!.prediction.home} : ${userBet!.prediction.away}' : '- : -';
    return Text(
      scoreString,
      style: context.textTheme.titleLarge,
    );
  }
}
