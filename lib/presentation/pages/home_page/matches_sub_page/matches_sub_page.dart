import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/match_bet_card.dart';

class MatchesSubPage extends ConsumerWidget {
  const MatchesSubPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(64),
            Text(
              DateFormat('d MMMM yyyy', 'pl').format(DateTime(2023, 6, 6)),
              style: context.textTheme.titleLarge,
            ),
            const Gap(32),
            MatchBetCard(),
          ],
        ),
      ),
    );
  }
}
