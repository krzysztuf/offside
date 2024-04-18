import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/user.dart';

import 'user_page_state.dart';

class UserStats extends StatelessWidget {
  final UserPageState state;

  const UserStats({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    final points = _calculatePointsBets();
    return Card(
      elevation: 2,
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.sports_soccer),
            title: 'Wytypowane mecze'.text,
            subtitle: buildSubtitle(
              'Ile meczów łącznie ${state.user.name} ${state.user.genderVariant('wytypował', 'wytypowała')}',
              context,
            ),
            trailing: buildValueWidget(state.bets.length, context),
          ),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.scoreboard_outlined),
            title: 'Doskonałe typy'.text,
            subtitle: buildSubtitle('Liczba typów za 3 lub 4 punkty', context),
            trailing: buildValueWidget(points[3], context),
          ),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.scoreboard_outlined),
            title: 'Dobre typy'.text,
            subtitle: buildSubtitle('Liczba typów za 1 lub 2 punkty', context),
            trailing: buildValueWidget(points[1], context),
          ),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.scoreboard_outlined),
            title: 'Nietrafione typy'.text,
            subtitle: buildSubtitle('Liczba typów za 0 punktów', context),
            trailing: buildValueWidget(points[0], context),
          ),
        ],
      ),
    );
  }

  Widget buildValueWidget(dynamic value, BuildContext context) {
    return '$value'.styledText(context.textTheme.titleLarge);
  }

  Map<int, int> _calculatePointsBets() {
    return state.matches.fold({0: 0, 1: 0, 3: 0}, (pointCounts, match) {
      final matchBet = state.bets.firstWhereOrNull((bet) => bet.matchId == match.id);
      if (matchBet == null) {
        return pointCounts;
      }

      final pointsAwarded = match.pointsFor(prediction: matchBet.prediction);
      if (pointsAwarded == 3 || pointsAwarded == 4) {
        pointCounts[3] = pointCounts[3]! + 1;
      } else if (pointsAwarded == 1 || pointsAwarded == 2) {
        pointCounts[1] = pointCounts[1]! + 1;
      } else {
        pointCounts[0] = pointCounts[0]! + 1;
      }

      log('$pointCounts');
      return pointCounts;
    });
  }

  Widget buildSubtitle(String text, BuildContext context) {
    return text.styledText(context.textTheme.bodySmall);
  }
}
