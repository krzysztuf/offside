import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/presentation/pages/home/table_sub_page/table_sub_page_controller.dart';
import 'package:offside/presentation/providers/current_user_provider.dart';
import 'package:offside/presentation/widgets/inflater.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:supercharged/supercharged.dart';

import 'loading_table_skeleton.dart';
import 'main_table.dart';
import 'table_sub_page_states.dart';

class TableSubPage extends ConsumerWidget {
  const TableSubPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      onRefresh: () => ref.read(tableSubPageControllerProvider.notifier).refresh(delay: 500.milliseconds),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(32),
                switch (ref.watch(currentUserProvider)) {
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
                },
                const Gap(8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'EURO 2024',
                    style: context.textTheme.titleMedium,
                  ),
                ),
                const Gap(32),
                switch (ref.watch(tableSubPageControllerProvider)) {
                  LoadingMainTableState() => Card(
                      child: LoadingTableSkeleton(
                        key: UniqueKey(),
                      ),
                    ),
                  MainTableReadyState(:final users) => Inflater(
                      inflated: true,
                      duration: 1.seconds,
                      scaleFactor: 0.9,
                      child: Card(
                        elevation: 3,
                        child: MainTable(
                          key: UniqueKey(),
                          users: users,
                        ),
                      ),
                    ),
                  _ => Container(),
                },
              ],
            ),
          ),
        ),
      ),
    );
  }
}
