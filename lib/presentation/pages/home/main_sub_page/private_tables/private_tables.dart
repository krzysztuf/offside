import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/iterable_extensions.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/domain/entities/user_score_summary.dart';
import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
import 'package:offside/presentation/pages/home/main_sub_page/private_tables/private_tables_controller.dart';
import 'package:offside/presentation/pages/home/main_sub_page/private_tables/private_tables_state.dart';
import 'package:offside/presentation/pages/home/main_sub_page/user_scores_table.dart';

class PrivateTables extends ConsumerWidget {
  final List<UserScoreSummary> userScores;

  const PrivateTables({super.key, required this.userScores});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(privateTablesControllerProvider);

    return Column(
      children: [
        ...buildPrivatesTables(context, ref, state),
        const Gap(16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonalIcon(
              onPressed: null,
              icon: const Icon(Icons.add),
              label: const Text('Nowa tabela'),
            ),
          ],
        ),
      ],
    );
  }

  Iterable<Widget> buildPrivatesTables(BuildContext context, WidgetRef ref, PrivateTablesState state) {
    final currentUserId = ref.read(currentUserIdSettingProvider);

    return state.tables.where((table) => table.memberIds.find((mid) => mid == currentUserId) != null).map((table) {
      final thisTableUserScores = userScores.where((us) {
        return table.memberIds.find((mid) => mid == us.user.id) != null;
      });

      return Column(
        children: [
          UserScoresTable(
            userScores: thisTableUserScores.toList(),
            header: ListTile(
              contentPadding: const EdgeInsets.only(left: 16, right: 8),
              title: table.name.text,
              leading: const Icon(Icons.leaderboard_outlined),
              trailing: Visibility(
                visible: table.ownerId == currentUserId,
                child: buildOwnerControls(context, ref),
              ),
            ),
          ),
          const Gap(16),
        ],
      );
    });
  }

  buildOwnerControls(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 80,
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.group_add_rounded),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
