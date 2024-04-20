import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/iterable_extensions.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/domain/entities/private_table.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/entities/user_score_summary.dart';
import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
import 'package:offside/presentation/pages/home/main_sub_page/private_tables/new_private_table_dialog.dart';
import 'package:offside/presentation/pages/home/main_sub_page/private_tables/private_tables_controller.dart';
import 'package:offside/presentation/pages/home/main_sub_page/private_tables/private_tables_state.dart';
import 'package:offside/presentation/pages/home/main_sub_page/user_scores_table.dart';

import 'table_members_picker.dart';

class PrivateTables extends ConsumerWidget {
  final List<UserScoreSummary> userScores;

  List<User> get users => userScores.map((us) => us.user).toList();

  const PrivateTables({
    super.key,
    required this.userScores,
  });

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
              onPressed: () => addNewTable(context, ref),
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
                child: buildOwnerControls(context, ref, table, users),
              ),
            ),
          ),
          const Gap(32),
        ],
      );
    });
  }

  Widget buildOwnerControls(BuildContext context, WidgetRef ref, PrivateTable table, List<User> users) {
    return SizedBox(
      width: 80,
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.group_add_rounded),
            onPressed: () {
              TableMembersPicker.bottomSheet(
                context,
                members: table.memberIds.toSet(),
                users: users,
                onSaved: (selectedMembers) {
                  ref.read(privateTablesControllerProvider.notifier).updateMembers(
                        table,
                        selectedMembers,
                      );
                },
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Future<void> addNewTable(BuildContext context, WidgetRef ref) async {
    await NewPrivateTableDialog.show(
      context,
      onAccepted: (name) async {
        final ownerId = ref.read(currentUserIdSettingProvider);
        var table = PrivateTable(
          name: name,
          ownerId: ownerId,
          memberIds: [ownerId],
        );

        await TableMembersPicker.bottomSheet(
          context,
          members: table.memberIds.toSet(),
          users: users,
          onSaved: (selectedMembers) {
            table = table.copyWith(memberIds: selectedMembers.toList());
          },
        );

        await ref.read(privateTablesControllerProvider.notifier).add(table);
      },
    );
  }
}
