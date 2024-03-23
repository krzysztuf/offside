import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
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
    return Card(
      margin: const EdgeInsets.all(32),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(
          columnWidths: const {
            0: FlexColumnWidth(),
            1: IntrinsicColumnWidth(),
            2: IntrinsicColumnWidth(),
          },
          children: [
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Mecz',
                    style: context.textTheme.titleMedium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: 'Typ'.text,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: 'Wynik'.text,
                ),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: '0:0'.text,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: '1:1'.text,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
