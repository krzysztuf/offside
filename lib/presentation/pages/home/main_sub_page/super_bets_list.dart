import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/presentation/pages/home/main_sub_page/super_bet_card.dart';
import 'package:offside/presentation/pages/home/main_sub_page/super_bets_list_controller.dart';

class SuperBetsList extends ConsumerWidget {
  const SuperBetsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return switch (ref.watch(superBetsListControllerProvider)) {
      AsyncData(value: final threePointsBets) => buildSuperBetsList(threePointsBets),
      AsyncError(error: final asd) => Text('Error: $asd'),
      _ => const Center(child: CircularProgressIndicator()),
    };
  }

  Widget buildSuperBetsList(Map<Match, List<User>> threePointsBets) {
    if (threePointsBets.values.every((users) => users.isEmpty)) {
      return Center(child: 'Pusto 🫠'.text);
    }

    return ListView(
      scrollDirection: Axis.horizontal,
      children: threePointsBets.entries.map((matchBets) {
        final match = matchBets.key;
        final users = matchBets.value;
        return users.map((user) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: SuperBetCard(
              match: match,
              user: user,
            ),
          );
        });
      }).fold([], (children, bets) => children..addAll(bets)),
    );
  }
}
