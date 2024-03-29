import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';

import 'user_prediction_status.dart';

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
      margin: const EdgeInsets.all(32),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(
          columnWidths: const {
            0: FlexColumnWidth(),
            1: IntrinsicColumnWidth(),
            2: IntrinsicColumnWidth(),
            3: IntrinsicColumnWidth(),
          },
          children: [
            TableRow(
              children: [
                createCell('MECZ', columnTitleStyle),
                createCell('TYP', columnTitleStyle),
                createCell('WYNIK', columnTitleStyle),
                createCell('PKT', columnTitleStyle),
              ],
            ),
            ...matches.map((m) => TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: UserPredictionStatus(
                        match: m,
                        userBet: userBets.firstWhereOrNull((bet) => bet.matchId == m.id),
                      ),
                    ),
                    createCell('0:0', cellStyle),
                    createCell('1:1', cellStyle),
                    createCell('+3', cellStyle),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Widget createCell(String text, TextStyle style) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(text, style: style),
    );
  }
}
