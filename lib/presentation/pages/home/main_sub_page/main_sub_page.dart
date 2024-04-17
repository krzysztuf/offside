import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/presentation/pages/home/main_sub_page/competition_winner_picker.dart';
import 'package:offside/presentation/pages/home/main_sub_page/private_tables.dart';
import 'package:offside/presentation/pages/home/main_sub_page/subtitled_headline.dart';
import 'package:offside/presentation/providers/current_user_provider.dart';
import 'package:offside/presentation/widgets/inflater.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:supercharged/supercharged.dart';

import 'loading_table_skeleton.dart';
import 'main_sub_page_controller.dart';
import 'main_sub_page_states.dart';
import 'main_table.dart';
import 'main_table_controller.dart';

class MainSubPage extends ConsumerWidget {
  const MainSubPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      onRefresh: () async {
        await ref.read(mainSubPageControllerProvider.notifier).refresh(delay: 500.milliseconds);
        await ref.read(mainTableControllerProvider.notifier).refresh();
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
                const Gap(4),
                buildGreetingSubtitle(context),
                const Gap(24),
                const CompetitionWinnerPicker(),
                const Gap(48),
                const SubtitledHeadline(
                  title: 'Tabela',
                  subtitle: 'Główna tabela z wszystkimi użytkownikami',
                ),
                const Gap(16),
                buildMainTable(ref),
                const Gap(48),
                const SubtitledHeadline(
                  title: 'Moje tabele',
                  subtitle: 'Stwórz własne tabele i zaproś innych',
                ),
                const Gap(32),
                const PrivateTables(),
                const Gap(32),
              ],
            ),
          ),
        ),
      ),
    );
  }

  StatelessWidget buildMainTable(WidgetRef ref) {
    return switch (ref.watch(mainSubPageControllerProvider)) {
      LoadingMainTableState() => Card(
          child: LoadingTableSkeleton(
            key: UniqueKey(),
          ),
        ),
      MainTableReadyState(:final users) => Inflater(
          inflated: true,
          duration: 1.seconds,
          scaleFactor: 0.95,
          child: Card(
            elevation: 3,
            child: MainTable(
              key: UniqueKey(),
              users: users,
            ),
          ),
        ),
      _ => Container(),
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
}
