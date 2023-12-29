import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:offside/core/extensions/list_with_gaps.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match_goals.dart';
import 'package:offside/domain/entities/user.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(32),
            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Text(
                DateFormat('d MMMM yyyy', 'pl').format(DateTime(2023, 6, 6)),
                style: context.textTheme.titleLarge,
              ),
            ),
            const Gap(32),
            ...state.matches
                .map((m) {
                  const user = User(
                    id: 1,
                    name: 'Krzysztof',
                    surname: 'Potrząsaj',
                  );

                  final bet = Bet(
                    id: 0,
                    user: user,
                    match: m,
                    prediction: const MatchGoals(home: 0, away: 0),
                  );

                  return ProviderScope(
                    overrides: [
                      matchBetCardViewModelProvider.overrideWith(() => MatchBetCardViewModel()),
                      currentCardBetProviderProvider.overrideWith((_) => bet)
                    ],
                    child: const MatchBetCard(),
                  );
                })
                .withGaps(gapSize: 32)
                .toList(),
          ],
        ),
      ),
    );
  }
}
