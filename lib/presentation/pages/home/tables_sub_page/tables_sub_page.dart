import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/mixin/scroll_to_top_mixin.dart';
import 'package:offside/domain/entities/user_score_summary.dart';
import 'package:offside/presentation/pages/home/main_sub_page/private_tables/private_tables.dart';
import 'package:offside/presentation/pages/home/main_sub_page/subtitled_headline.dart';
import 'package:offside/presentation/providers/user_scores.dart';
import 'package:supercharged/supercharged.dart';

class TablesSubPage extends ConsumerStatefulWidget {
  const TablesSubPage({super.key});

  @override
  ConsumerState<TablesSubPage> createState() => TablesSubPageState();
}

class TablesSubPageState extends ConsumerState<TablesSubPage> with ScrollToTopMixin<TablesSubPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  ScrollController get scrollController => _scrollController;

  @override
  Widget build(BuildContext context) {
    final userScoresAsync = ref.watch(userScoresProvider);
    return userScoresAsync.when(
      data: (userScores) => _buildTablesSubPage(context, ref, userScores),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (_, __) => const Center(child: Text('Error')),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Widget _buildTablesSubPage(BuildContext context, WidgetRef ref, List<UserScoreSummary> userScores) {
    return RefreshIndicator(
      onRefresh: () async {
        await ref.read(userScoresProvider.notifier).refresh(delay: 500.milliseconds);
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          controller: _scrollController,
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
