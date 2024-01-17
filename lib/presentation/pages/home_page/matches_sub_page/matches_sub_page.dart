import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/match_bet_card_view_model.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/matches_sub_page_view_model.dart';

import 'match_bet_card.dart';

class MatchesSubPage extends ConsumerStatefulWidget {
  const MatchesSubPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _MatchesSubPageState();
  }
}

class _MatchesSubPageState extends ConsumerState<MatchesSubPage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(matchesSubPageViewModelProvider);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: unfoldMatches(state.matches),
      ),
    );
  }

  Widget unfoldMatches(Map<DateTime, List<Match>> matches) {
    return Column(
      children: matches.entries.map((entry) {
        final kickOffDay = entry.key;
        final thisDayMatches = entry.value;

        log('$kickOffDay: ${thisDayMatches.length}');

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(32),
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Text(
                DateFormat('d MMMM yyyy', 'pl').format(kickOffDay),
                style: context.textTheme.titleLarge,
              ),
            ),
            const Gap(8),
            for (final match in thisDayMatches)
              ProviderScope(
                overrides: [
                  matchBetCardViewModelProvider.overrideWith(() => MatchBetCardViewModel()),
                  currentCardMatchProvider.overrideWith((_) => match),
                ],
                child: const Column(
                  children: [
                    MatchBetCard(),
                    Gap(32),
                  ],
                ),
              ),
          ],
        );
      }).toList(),
    );
  }
}
