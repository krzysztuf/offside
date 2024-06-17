import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/goals.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/entities/user_prediction.dart';
import 'package:offside/presentation/pages/home/matches_sub_page/bets/match_bets_controller.dart';
import 'package:offside/presentation/pages/home/matches_sub_page/bets/match_bets_state.dart';
import 'package:offside/presentation/widgets/offside/team_badge.dart';

enum BetsFilter {
  all,
  home,
  away,
  draw,
}

class MatchBets extends ConsumerStatefulWidget {
  const MatchBets({super.key});

  @override
  ConsumerState<MatchBets> createState() => _MatchBetsState();
}

class _MatchBetsState extends ConsumerState<MatchBets> with SingleTickerProviderStateMixin {
  var _betFilter = BetsFilter.all;

  @override
  Widget build(BuildContext context) {
    late final state = ref.watch(matchBetsControllerProvider);

    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TeamBadge(team: state.match.homeTeam.value),
              const Text(':', style: TextStyle(fontSize: 22)),
              TeamBadge(team: state.match.awayTeam.value),
            ],
          ),
          const Gap(32),
          // buildPredictionTabs(state, ref, context),
          buildUserPredictionsList(state, ref, context),
        ],
      ),
    );
  }

  Widget buildUserPredictionsList(MatchBetsState state, WidgetRef ref, BuildContext context) {
    final filteredBets = filterByType(state.bets);
    return Column(
      children: [
        DefaultTabController(
          length: 4,
          child: TabBar(
            onTap: (index) {
              setState(() => _betFilter = BetsFilter.values[index]);
            },
            tabs: [
              const Tab(text: 'TYPY'),
              Tab(text: state.match.homeTeam.value.abbreviation),
              Tab(text: state.match.awayTeam.value.abbreviation),
              const Tab(text: 'REMIS'),
            ],
          ),
        ),
        const Gap(16),
        if (filteredBets.isEmpty) ...[
          SizedBox(
            height: 200,
            child: Center(child: 'Pusto 🫠'.text),
          ),
        ] else ...[
          for (final bet in filteredBets)
            ListTile(
              contentPadding: const EdgeInsets.only(bottom: 8),
              leading: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: bet.user.avatar(context, ref, radius: 16),
              ),
              title: '${bet.user.name} ${bet.user.surname}'.text,
              trailing: SizedBox(
                width: 80,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildGoalsText(bet.prediction?.goals.home, context),
                          buildGoalsText(' : ', context),
                          buildGoalsText(bet.prediction?.goals.away, context),
                        ],
                      ),
                      buildPenaltiesWinnerText(bet, state.match, context),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ],
    );
  }

  Text buildGoalsText(Object? text, BuildContext context) {
    return Text(
      text?.toString() ?? '-',
      style: context.textTheme.bodyLarge!.copyWith(
        fontSize: 20,
        color: context.colorScheme.primary,
      ),
    );
  }

  Widget buildPenaltiesWinnerText(UserPrediction bet, Match match, BuildContext context) {
    if (match.knockoutStage && (bet.prediction?.goals.draw ?? false)) {
      return Text(
        match.teamFor(id: bet.prediction!.penaltiesWinnerId!)?.abbreviation ?? '-',
      );
    }

    return const SizedBox.shrink();
  }

  List<UserPrediction> filterByType(List<UserPrediction> bets) {
    return switch (_betFilter) {
      BetsFilter.all => bets,
      BetsFilter.home => bets.where((bet) => bet.prediction?.goals.homeTeamWins ?? false).toList(),
      BetsFilter.away => bets.where((bet) => bet.prediction?.goals.awayTeamWins ?? false).toList(),
      BetsFilter.draw => bets.where((bet) => bet.prediction?.goals.draw ?? false).toList(),
    };
  }
}
