import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/user_score_summary.dart';
import 'package:offside/presentation/pages/home/main_sub_page/competition_winner_picker.dart';
import 'package:offside/presentation/pages/home/main_sub_page/private_tables/private_tables_controller.dart';
import 'package:offside/presentation/pages/home/main_sub_page/subtitled_headline.dart';
import 'package:offside/presentation/providers/competition_started_provider.dart';
import 'package:offside/presentation/providers/current_user_provider.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:supercharged/supercharged.dart';

import '../../../providers/user_scores.dart';
import 'super_bets_list.dart';
import 'user_scores_table.dart';

class MainSubPage extends ConsumerWidget {
  const MainSubPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userScoresAsync = ref.watch(userScoresProvider);
    return switch (userScoresAsync) {
      AsyncData(value: final userScores) => _buildMainSubPage(context, ref, userScores),
      AsyncError() => const Center(child: Text('Error')),
      _ => const Center(child: CircularProgressIndicator()),
    };
  }

  Padding buildGreetingSubtitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        'Witaj w Typowniku na EURO 2024',
        style: context.textTheme.titleMedium,
      ),
    );
  }

  Widget buildUserGreeting(WidgetRef ref, BuildContext context) {
    return switch (ref.watch(currentUserProvider)) {
      AsyncData(value: final user) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'Hej ${user!.name} 👋',
            style: context.textTheme.headlineLarge,
          ),
        ),
      AsyncError() => const Center(child: Text('Error')),
      _ => Skeletonizer(
          enabled: true,
          child: Text(
            'Hej Użytkowniku 👋',
            style: context.textTheme.headlineLarge,
          ),
        ),
    };
  }

  Widget _buildMainSubPage(BuildContext context, WidgetRef ref, List<UserScoreSummary> userScores) {
    return RefreshIndicator(
      onRefresh: () async {
        await ref.read(userScoresProvider.notifier).refresh(delay: 500.milliseconds);
        await ref.read(privateTablesControllerProvider.notifier).refresh();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(16),
                buildUserGreeting(ref, context),
                if (!ref.read(competitionStartedProvider)) ...[
                  const Gap(16),
                  const CompetitionWinnerPicker(),
                ],
                if (ref.read(competitionStartedProvider)) ...[
                  const Gap(16),
                  const SubtitledHeadline(
                    title: 'Super typy',
                    subtitle: 'Zdobywcy max punktów w ostatnich 6 meczach',
                  ),
                  const Gap(16),
                  const SizedBox(
                    height: 88,
                    child: SuperBetsList(),
                  ),
                ],
                const Gap(32),
                const SubtitledHeadline(
                  title: 'Tabela',
                  subtitle: 'Główna tabela z wszystkimi użytkownikami',
                ),
                const Gap(16),
                UserScoresTable(userScores: userScores),
                const Gap(32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
