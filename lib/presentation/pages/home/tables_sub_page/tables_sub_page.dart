import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:offside/domain/entities/user_score_summary.dart';
import 'package:offside/presentation/pages/home/main_sub_page/private_tables/private_tables.dart';
import 'package:offside/presentation/pages/home/main_sub_page/subtitled_headline.dart';
import 'package:offside/presentation/providers/user_scores.dart';
import 'package:supercharged/supercharged.dart';

class TablesSubPage extends ConsumerWidget {
  const TablesSubPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userScoresAsync = ref.watch(userScoresProvider);
    return switch (userScoresAsync) {
      AsyncData(value: final userScores) => _buildTablesSubPage(context, ref, userScores),
      AsyncError() => const Center(child: Text('Error')),
      _ => const Center(child: CircularProgressIndicator()),
    };
  }

  Widget _buildTablesSubPage(BuildContext context, WidgetRef ref, List<UserScoreSummary> userScores) {
    return RefreshIndicator(
      onRefresh: () async {
        await ref.refresh(userScoresProvider.notifier).refresh(delay: 500.milliseconds);
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Gap(16),
                const SubtitledHeadline(
                  title: 'Moje tabele',
                  subtitle: 'Stwórz tabele i zaproś innych. Tabele są prywatne, '
                      'widoczne tylko dla zaproszonych użytkowników.',
                ),
                const Gap(16),
                PrivateTables(userScores: userScores),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
