import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/match_bet_card_controller.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/matches_sub_page_view_model.dart';
import 'package:offside/presentation/widgets/admin_visible.dart';

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
    return RefreshIndicator(
      onRefresh: ref.read(matchesSubPageViewModelProvider.notifier).refresh,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(16),
              ListTile(
                title: Text('Nadchodzące mecze', style: context.textTheme.headlineSmall),
                trailing: FilledButton.tonalIcon(
                  icon: const Icon(Icons.history, size: 18),
                  onPressed: null,
                  label: 'Historia'.text,
                ),
              ),
              unfoldMatches(state.matches),
              const AdminVisible(child: SizedBox(height: 46)),
            ],
          ),
        ),
      ),
    );
  }

  Widget unfoldMatches(Map<DateTime, List<Match>> matches) {
    return Column(
      key: UniqueKey(),
      children: matches.entries.map((entry) {
        final kickOffDay = entry.key;
        final matchesThisDay = entry.value;

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
                  matchBetCardControllerProvider.overrideWith(() => MatchBetCardController()),
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
