import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/presentation/pages/home_page/table_sub_page/table_sub_page_controller.dart';
import 'package:offside/presentation/widgets/inflater.dart';
import 'package:supercharged/supercharged.dart';

import 'loading_table_skeleton.dart';
import 'main_table.dart';
import 'table_sub_page_states.dart';

class TableSubPage extends ConsumerWidget {
  const TableSubPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(32),
            Text(
              'UEFA Euro 2024',
              style: context.textTheme.headlineLarge,
            ),
            const Gap(8),
            Text(
              'Aktywni użytkownicy: 12',
              style: context.textTheme.titleMedium,
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
                    child: MainTable(
                      key: UniqueKey(),
                      users: users,
                    ),
                  ),
                ),
              _ => Container(),
            },
            const Gap(32),
          ],
        ),
      ),
    );
  }
}
