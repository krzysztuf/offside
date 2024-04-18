import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/goals.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/match_outcome.dart';
import 'package:offside/presentation/providers/date_time_provider.dart';
import 'package:offside/presentation/theme/shared_widgets_theme.dart';

import '../../widgets/offside/match_rivals_abbreviations_row.dart';

class UserBetsTable extends ConsumerWidget {
  final List<Match> matches;
  final List<Bet> userBets;

  const UserBetsTable({
    super.key,
    required this.matches,
    required this.userBets,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var columnTitleStyle = context.widgetThemes.userBets.columnTitle;
    final cellStyle = context.textTheme.bodyLarge!;

    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          columnWidths: const {
            0: FlexColumnWidth(),
            1: FixedColumnWidth(56),
            2: FixedColumnWidth(56),
            3: FixedColumnWidth(56),
          },
          children: [
            TableRow(
              children: [
                createTextCell('MECZ', columnTitleStyle),
                createTextCell('WYNIK', columnTitleStyle),
                createTextCell('TYP', columnTitleStyle),
                createTextCell('PKT', columnTitleStyle),
              ],
            ),
            ...matches.map((m) {
              var userBet = userBets.firstWhereOrNull((bet) => bet.matchId == m.id);
              return TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MatchRivalsAbbreviationsRow(match: m),
                  ),
                  createOutcomeCell(m, m.outcome, cellStyle),
                  createPredictionCell(m, userBet?.prediction, cellStyle, ref.read(dateTimeProvider)),
                  createTextCell(
                    buildPointsText(m, userBet?.prediction),
                    applyPointsColor(
                      cellStyle,
                      m,
                      context.widgetThemes.sharedWidgets,
                      userBet?.prediction,
                    ),
                  ),
                ],
              );
            })
          ],
        ),
      ),
    );
  }

  Widget createTextCell(String text, TextStyle style) {
    return createCell(Text(text, style: style));
  }

  Widget createCell(Widget child) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: child,
      ),
    );
  }

  Widget createOutcomeCell(Match match, MatchOutcome? outcome, TextStyle style) {
    if (outcome == null) {
      return createTextCell('-', style);
    }

    if (!match.knockoutStage || outcome.penaltiesWinnerId == null) {
      return createTextCell(outcome.goals.asString, style);
    }

    return createCell(
      Column(
        children: [
          Text(outcome.goals.asString, style: style),
          Opacity(
            opacity: 0.7,
            child: Text(match.teamFor(id: outcome.penaltiesWinnerId!)?.abbreviation ?? '-',
                style: style.copyWith(fontSize: 10)),
          ),
        ],
      ),
    );
  }

  String buildPointsText(Match match, MatchOutcome? prediction) {
    if (match.outcome == null || prediction == null) {
      return '-';
    }

    var points = match.pointsFor(prediction: prediction);
    return points > 0 ? '+$points' : '0';
  }

  TextStyle applyPointsColor(TextStyle cellStyle, Match match, SharedWidgetsTheme theme, MatchOutcome? prediction) {
    if (!match.finished) {
      return cellStyle;
    }

    if (prediction == null) {
      return cellStyle;
    }

    return switch (match.pointsFor(prediction: prediction)) {
      >= 3 => cellStyle.copyWith(color: theme.threePointsColor),
      >= 1 => cellStyle.copyWith(color: theme.onePointsColor),
      0 => cellStyle.copyWith(color: theme.noPointsColor),
      _ => cellStyle,
    };
  }

  Widget createPredictionCell(Match match, MatchOutcome? prediction, TextStyle style, DateTime now) {
    if (!match.afterKickOff(now)) {
      return createTextCell('-', style);
    }

    return createOutcomeCell(match, prediction, style);
  }
}
