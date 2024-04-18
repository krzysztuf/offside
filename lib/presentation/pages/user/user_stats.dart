import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/presentation/widgets/offside/team_badge.dart';

import 'user_page_state.dart';

class UserStats extends StatelessWidget {
  final UserPageState state;

  const UserStats({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    final pointStats = _calculatePointStatistics();
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
            horizontalTitleGap: 24,
          ),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.scoreboard_outlined),
            title: 'Doskonałe typy'.text,
            subtitle: buildSubtitle('Liczba typów za 3 lub 4 punkty', context),
            trailing: buildValueWidget(pointStats[3], context),
            horizontalTitleGap: 24,
          ),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.scoreboard_outlined),
            title: 'Dobre typy'.text,
            subtitle: buildSubtitle('Liczba typów za 1 lub 2 punkty', context),
            trailing: buildValueWidget(pointStats[1], context),
            horizontalTitleGap: 24,
          ),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.scoreboard_outlined),
            title: 'Nietrafione typy'.text,
            subtitle: buildSubtitle('Liczba typów za 0 punktów', context),
            trailing: buildValueWidget(pointStats[0], context),
            horizontalTitleGap: 24,
          ),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.emoji_events_rounded),
            title: 'Zwycięzca Euro 2024'.text,
            subtitle: buildSubtitle(
              'Jaką drużynę ${state.user.name} ${state.user.genderVariant('wytypował', 'wytypowała')} jako zwycięzcę turnieju',
              context,
            ),
            trailing: buildCompetitionWinnerWidget(context),
            horizontalTitleGap: 24,
          ),
        ],
      ),
    );
  }

  Widget buildValueWidget(dynamic value, BuildContext context) {
    return '$value'.styledText(context.textTheme.titleLarge);
  }

  Map<int, int> _calculatePointStatistics() {
    return state.matches.fold({0: 0, 1: 0, 3: 0}, (pointStatistics, match) {
      final matchBet = state.bets.firstWhereOrNull((bet) => bet.matchId == match.id);
      if (matchBet == null) {
        return pointStatistics;
      }

      final pointsAwarded = match.pointsFor(prediction: matchBet.prediction);
      if (pointsAwarded == 3 || pointsAwarded == 4) {
        pointStatistics[3] = pointStatistics[3]! + 1;
      } else if (pointsAwarded == 1 || pointsAwarded == 2) {
        pointStatistics[1] = pointStatistics[1]! + 1;
      } else {
        pointStatistics[0] = pointStatistics[0]! + 1;
      }

      return pointStatistics;
    });
  }

  Widget buildSubtitle(String text, BuildContext context) {
    return text.styledText(context.textTheme.bodySmall);
  }

  Widget buildCompetitionWinnerWidget(BuildContext context) {
    if (state.user.winnerPredictionId == null) {
      return 'Brak typu 🫠'.styledText(const TextStyle(color: Colors.grey));
    }

    final winnerTeam = findWinnerTeam();
    return SizedBox(
      width: 68,
      child: Row(
        children: [
          Expanded(child: Container()),
          TeamBadge(
            team: winnerTeam,
            badgeRadius: 12,
            textStyle: context.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }

  Team findWinnerTeam() {
    Team? winnerTeam;
    for (var match in state.matches) {
      winnerTeam = match.teamFor(id: state.user.winnerPredictionId!);
      if (winnerTeam != null) {
        break;
      }
    }

    return winnerTeam!;
  }
}
