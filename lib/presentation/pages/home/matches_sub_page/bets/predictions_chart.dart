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
    final colors = [colorScheme.primary, colorScheme.secondary, colorScheme.tertiary];
    return SizedBox(
      width: 240,
      child: AspectRatio(
        aspectRatio: 1,
        child: DChartPieO(
          data: [
            OrdinalData(
              domain: match.homeTeam?.abbreviation ?? '-',
              measure: homeWins.length,
            ),
            OrdinalData(
              domain: match.awayTeam?.abbreviation ?? '-',
              measure: awayWins.length,
            ),
            OrdinalData(
              domain: 'REMIS',
              measure: draws.length,
            ),
          ],
          configSeriesPie: ConfigSeriesPieO(
            customColor: (group, data, index) => colors[index ?? 0],
            showLabel: true,
            arcLabelDecorator: ArcLabelDecoratorO(
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
        ),
      ),
    );
  }
}
