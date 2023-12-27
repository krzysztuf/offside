import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/presentation/pages/home_page/table_sub_page/table_sub_page_controller.dart';
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
            Card(
              margin: const EdgeInsets.all(0),
              child: AnimatedContainer(
                duration: 5.seconds,
                child: switch (ref.watch(tableSubPageControllerProvider)) {
                  // LoadingMainTableState() => IntrinsicHeight(
                  //     child: Container(
                  //       key: UniqueKey(),
                  //       color: Colors.blue[500],
                  //       height: 100,
                  //     ),
                  //   ),
                  // MainTableReadyState(:final users) => IntrinsicHeight(
                  //     child: Container(
                  //       key: UniqueKey(),
                  //       color: Colors.blueGrey[900],
                  //       height: 300,
                  //     ),
                  //   ),
                  LoadingMainTableState() => LoadingTableSkeleton(
                      key: UniqueKey(),
                    ),
                  MainTableReadyState(:final users) => MainTable(
                      key: UniqueKey(),
                      users: users,
                    ),
                  _ => Container(height: 400),
                },
              ),
            ),
            const Gap(32),
          ],
        ),
      ),
    );
  }
}
