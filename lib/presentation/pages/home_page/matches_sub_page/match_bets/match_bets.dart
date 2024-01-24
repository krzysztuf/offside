import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/match_bets/loading_table_skeleton.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/match_bets/match_bets_state.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/match_bets/match_bets_view_model.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/team_badge.dart';
import 'package:offside/presentation/widgets/alternative_inflater.dart';

class MatchBets extends ConsumerWidget {
  const MatchBets({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(matchBetsViewModelProvider);
    return AlternativeInflater(
      alignment: Alignment.topCenter,
      useAlternative: state.loading,
      builder: () => buildUserPredictionsList(state, context),
      alternativeBuilder: () => const LoadingBetsSkeleton(),
    );
  }

  Widget buildUserPredictionsList(MatchBetsState state, BuildContext context) {
    return Padding(
      key: UniqueKey(),
      padding: const EdgeInsets.all(24.0),
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
          for (final bet in state.bets)
            ListTile(
              contentPadding: const EdgeInsets.only(bottom: 16),
              leading: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: bet.user.avatar(context),
              ),
              title: '${bet.user.name} ${bet.user.surname}'.text,
              trailing: SizedBox(
                width: 100,
                child: Card(
                  elevation: 1,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildGoalsText(bet.prediction?.home, context),
                        buildGoalsText(' : ', context),
                        buildGoalsText(bet.prediction?.away, context),
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
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
}
