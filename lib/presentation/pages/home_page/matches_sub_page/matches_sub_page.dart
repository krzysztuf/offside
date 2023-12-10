import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:offside/core/extensions/async_value_widget_builder.dart';
import 'package:offside/core/extensions/list_with_gaps.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/models/match.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/state/upcoming_matches_provider.dart';

import 'match_bet_card.dart';

class MatchesSubPage extends ConsumerStatefulWidget {
  const MatchesSubPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _MatchesSubPageState();
  }
}

class _MatchesSubPageState extends ConsumerState<MatchesSubPage> {
  final matchesStore = DataStore(<Match>[]);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ref.watch(upcomingMatchesProvider).build(
              store: matchesStore,
              builder: (matches) {
                return Column(
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
                    ...matches.map((m) => MatchBetCard(m)).withGaps(gapSize: 32).toList(),
                  ],
                );
              },
            ),
      ),
    );
  }
}
