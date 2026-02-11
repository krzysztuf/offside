import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/core/mixin/scroll_to_top_mixin.dart';
import 'package:offside/presentation/pages/home/matches_sub_page/match_card_controller.dart';
import 'package:offside/presentation/pages/home/matches_sub_page/matches_sub_page_controller.dart';
import 'package:offside/presentation/pages/home/matches_sub_page/matches_sub_page_states.dart';
import 'package:offside/presentation/widgets/admin_visible.dart';
import 'package:offside/presentation/widgets/connection_error_view.dart';
import 'package:supercharged/supercharged.dart';

import 'match_card.dart';

class MatchesSubPage extends ConsumerStatefulWidget {
  const MatchesSubPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return MatchesSubPageState();
  }
}

class MatchesSubPageState extends ConsumerState<MatchesSubPage> with ScrollToTopMixin<MatchesSubPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  ScrollController get scrollController => _scrollController;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final asyncState = ref.watch(matchesSubPageControllerProvider);
    return asyncState.when(
      data: (state) => _buildContent(context, state),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (_, _) => ConnectionErrorView(
        onRetry: () => ref.invalidate(matchesSubPageControllerProvider),
      ),
    );
  }

  Widget _buildContent(BuildContext context, MatchesData state) {
    return RefreshIndicator(
      notificationPredicate: (_) => true,
      onRefresh: () => ref.read(matchesSubPageControllerProvider.notifier).refresh(delay: 500.milliseconds),
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(16),
              buildHeader(context),
              unfoldMatches(state),
              const AdminVisible(child: SizedBox(height: 46)),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Nadchodzące mecze', style: context.textTheme.headlineSmall),
          FilledButton.tonalIcon(
            label: 'Historia'.text,
            icon: const Icon(Icons.history),
            onPressed: () => context.goNamed('history'),
          ),
        ],
      ),
    );
  }

  Widget unfoldMatches(MatchesData state) {
    return Column(
      key: UniqueKey(),
      children: state.matches.entries.map((entry) {
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
    );
  }
}
