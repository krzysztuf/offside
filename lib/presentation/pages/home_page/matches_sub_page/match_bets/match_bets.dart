import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/match_bets/loading_table_skeleton.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/match_bets/match_bets_view_model.dart';

class MatchBets extends ConsumerWidget {
  const MatchBets({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(matchBetsViewModelProvider);
    if (state.loading) {
      return const LoadingBetsSkeleton();
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          for (final bet in state.bets)
            ListTile(
              leading: bet.user.avatar(radius: 20),
              title: '${bet.user.name} ${bet.user.surname}'.text,
              subtitle: switch (bet.prediction) {
                null => 'Nie obstawił'.text,
                _ => Row(
                    children: [
                      bet.prediction!.home.text,
                      ':'.text,
                      bet.prediction!.away.text,
                    ],
                  ),
              },
              // trailing: switch (bet.prediction) {
              //   null => 'Nie obstawił'.text,
              //   _ => SizedBox(
              //       width: 48,
              //       height: 48,
              //       child: Row(
              //         children: [
              //           bet.prediction!.home.text,
              //           ':'.text,
              //           bet.prediction!.away.text,
              //         ],
              //       ),
              //     ),
              // },
            ),
        ],
      ),
    );
  }
}
