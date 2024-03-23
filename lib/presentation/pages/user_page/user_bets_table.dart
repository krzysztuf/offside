import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
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
        child: Column(
          children: matches
              .map((m) => UserPredictionStatus(
                    match: m,
                    userBet: userBets.firstWhereOrNull((bet) => bet.matchId == m.id),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
