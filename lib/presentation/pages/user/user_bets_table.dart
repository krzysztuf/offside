import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/goals.dart';
import 'package:offside/domain/entities/match.dart';

import 'match_rivals_abbreviations_row.dart';

class UserBetsTable extends StatelessWidget {
  final List<Match> matches;
  final List<Bet> userBets;

  const UserBetsTable({
    super.key,
    required this.matches,
    required this.userBets,
  });

  @override
  Widget build(BuildContext context) {
    var columnTitleStyle = context.widgetThemes.userBets.columnTitle;
    var cellStyle = context.widgetThemes.userBets.cellValue;

    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(
          columnWidths: const {
            0: FlexColumnWidth(),
            1: FixedColumnWidth(56),
            2: FixedColumnWidth(56),
            3: FixedColumnWidth(56),
          },
          children: [
            TableRow(
              children: [
                createCell('MECZ', columnTitleStyle),
                createCell('WYNIK', columnTitleStyle),
                createCell('TYP', columnTitleStyle),
                createCell('PKT', columnTitleStyle),
              ],
            ),
            ...matches.map((m) {
              var userBet = userBets.firstWhereOrNull((bet) => bet.matchId == m.id);
              return TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MatchRivalsAbbreviationsRow(
                      match: m,
                      userBet: userBet,
                    ),
                  ),
                  createCell(m.outcome?.goals.asString ?? '-', cellStyle),
                  createCell(userBet?.prediction.goals.asString ?? '-', cellStyle),
                  createCell(buildPointsText(m.outcome?.goals, userBet?.prediction.goals), cellStyle),
                ],
              );
            })
          ],
        ),
      ),
    );
  }

  Widget createCell(String text, TextStyle style) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text, style: style),
      ),
    );
  }

  String buildPointsText(Goals? result, Goals? prediction) {
    if (result == null || prediction == null) {
      return '-';
    }

    if (result == prediction) {
      return '+3';
    }

    if (result.homeTeamWon && prediction.homeTeamWon ||
        result.awayTeamWon && prediction.awayTeamWon ||
        result.draw && prediction.draw) {
      return '+1';
    }

    return '0';
  }
}
