import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/presentation/pages/home_page/table_sub_page/loading_table_skeleton.dart';
import 'package:offside/presentation/pages/home_page/table_sub_page/table_sub_page_controller.dart';

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
              style: context.textTheme.bodySmall,
            ),
            const Gap(32),
            Card(
              margin: const EdgeInsets.all(0),
              child: switch (ref.watch(tableSubPageControllerProvider)) {
                LoadingMainTableState() => const LoadingTableSkeleton(),
                _ => Container(height: 400),
              },
            ),
            const Gap(16),
          ],
        ),
      ),
    );
  }
}
