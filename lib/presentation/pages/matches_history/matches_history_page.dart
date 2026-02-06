import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/presentation/pages/home/matches_sub_page/match_card.dart';
import 'package:offside/presentation/pages/home/matches_sub_page/match_card_controller.dart';

import 'matches_history_page_controller.dart';

class MatchesHistoryPage extends ConsumerWidget {
  const MatchesHistoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Zakończone mecze'),
        ),
        body: switch (ref.watch(matchesHistoryPageControllerProvider)) {
          AsyncData(value: final state) => _unfoldMatches(state, context),
          AsyncError(error: final e) => buildErrorMessage(e),
          _ => const Center(child: CircularProgressIndicator()),
        });
  }

  Center buildErrorMessage(Object e) {
    log(e.toString());
    return Center(child: e.toString().text);
  }

  Widget _unfoldMatches(MatchesHistoryState state, BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          key: UniqueKey(),
          children: state.matches.entries.toList().reversed.map((entry) {
            final kickOffDay = entry.key;
            final matchesThisDay = entry.value.sorted((a, b) => a.kickOffDate.compareTo(b.kickOffDate));

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(16),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.calendar_month,
                      color: context.colorScheme.primary,
                    ),
                    title: Text(DateFormat('d MMMM', 'pl').format(kickOffDay)),
                    subtitle: Text(
                      '${matchesThisDay.length} ${matchesThisDay.length == 1 ? 'MECZ' : 'MECZE'}',
                      style: context.textTheme.bodySmall,
                    ),
                  ),
                ),
                const Gap(8),
                for (final match in matchesThisDay)
                  ProviderScope(
                    overrides: [
                      matchCardControllerProvider.overrideWith(() => MatchCardController()),
                      currentCardMatchProvider.overrideWith((_) => match),
                      currentCardBetsProvider.overrideWith((_) => state.betsByMatchId[match.id] ?? []),
                    ],
                    child: const Column(
                      children: [
                        MatchCard(),
                        Gap(32),
                      ],
                    ),
                  ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
