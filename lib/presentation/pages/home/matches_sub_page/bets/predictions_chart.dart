import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/goals.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/user_prediction.dart';

class PredictionsChart extends StatelessWidget {
  final Match match;
  final List<UserPrediction> bets;

  const PredictionsChart({
    super.key,
    required this.bets,
    required this.match,
  });

  List get homeWins => bets.where((bet) => bet.prediction?.goals.homeTeamWins ?? false).toList();

  List get awayWins => bets.where((bet) => bet.prediction?.goals.awayTeamWins ?? false).toList();

  List get draws => bets.where((bet) => bet.prediction?.goals.draw ?? false).toList();

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    return SizedBox(
      width: 240,
      child: AspectRatio(
        aspectRatio: 1,
        child: DChartPieO(
          data: [
            OrdinalData(
              domain: match.homeTeam.value.abbreviation,
              measure: homeWins.length,
              color: colorScheme.primary,
            ),
            OrdinalData(
              domain: match.awayTeam.value.abbreviation,
              measure: awayWins.length,
              color: colorScheme.secondary,
            ),
            OrdinalData(
              domain: 'REMIS',
              measure: draws.length,
              color: colorScheme.tertiary,
            ),
          ],
          configRenderPie: ConfigRenderPie(
            arcLabelDecorator: ArcLabelDecorator(
              leaderLineStyle: ArcLabelLeaderLineStyle(
                color: context.textTheme.bodySmall!.color!,
                length: 20,
                thickness: 1,
              ),
              insideLabelStyle: LabelStyle(
                color: colorScheme.onPrimary,
                fontSize: 14,
              ),
              showLeaderLines: true,
            ),
          ),
          // configRenderPie: ConfigRenderPie(
          // ),
        ),
      ),
    );
  }
}
