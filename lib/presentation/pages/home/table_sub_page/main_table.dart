import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:offside/core/extensions/list_with_gaps.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
import 'package:offside/presentation/pages/home/table_sub_page/main_table_controller.dart';

import 'main_table_state.dart';

class MainTable extends ConsumerWidget {
  final List<User> users;

  const MainTable({super.key, required this.users});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(mainTableControllerProvider);
    final sortedScores = _sortByPoints(state.userScores);

    return Column(
      children: sortedScores.mapIndexed(
        (index, userScores) {
          final user = userScores.user;

          return ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            leading: buildStandingAndAvatar(context, index + 1, user),
            title: user.fullName.text,
            subtitle: buildRecentForm(context, userScores),
            selected: user.id == ref.watch(currentUserIdSettingProvider),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: '${userScores.totalScore}'.styledText(context.textTheme.headlineSmall!),
            ),
            onTap: () => context.goNamed('userDetails', extra: user),
          );
        },
      ).toList(),
    );
  }

  List<UserScores> _sortByPoints(List<UserScores> userScores) {
    return [...userScores]..sort((a, b) => b.totalScore.compareTo(a.totalScore));
  }

  Widget buildStandingAndAvatar(BuildContext context, int standing, User user) {
    return SizedBox(
      width: 68,
      child: Row(
        children: [
          '$standing'.styledText(context.textTheme.bodyMedium!),
          const SizedBox(width: 16),
          user.avatar(context, radius: 20, fontSize: 14),
        ],
      ),
    );
  }

  Widget buildRecentForm(BuildContext context, UserScores userScores) {
    if (userScores.recentPredictionsScores.isEmpty) {
      return 'Brak ostatnich typowań'.styledText(context.textTheme.bodySmall!);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          ...userScores.recentPredictionsScores.map((score) => switch (score) {
                <= 0 => Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(color: Colors.red.shade500, borderRadius: BorderRadius.circular(4)),
                  ),
                1 => Container(
                    width: 8,
                    height: 8,
                    decoration:
                        BoxDecoration(color: Colors.lightGreen.shade300, borderRadius: BorderRadius.circular(4)),
                  ),
                >= 3 => Container(
                    width: 8,
                    height: 8,
                    decoration:
                        BoxDecoration(color: Colors.lightGreen.shade700, borderRadius: BorderRadius.circular(4)),
                  ),
                _ => throw UnimplementedError('Unknown score: $score'),
              })
          // Container(
          //   width: 8,
          //   height: 8,
          //   decoration: BoxDecoration(color: Colors.lightGreen.shade700, borderRadius: BorderRadius.circular(4)),
          // ),
          // Container(
          //   width: 8,
          //   height: 8,
          //   decoration: BoxDecoration(color: Colors.lightGreen.shade700, borderRadius: BorderRadius.circular(4)),
          // ),
          // Container(
          //   width: 8,
          //   height: 8,
          //   decoration: BoxDecoration(color: Colors.red.shade500, borderRadius: BorderRadius.circular(4)),
          // ),
          // Container(
          //   width: 8,
          //   height: 8,
          //   decoration: BoxDecoration(color: Colors.lightGreen.shade300, borderRadius: BorderRadius.circular(4)),
          // ),
          // Container(
          //   width: 8,
          //   height: 8,
          //   decoration: BoxDecoration(color: Colors.lightGreen.shade700, borderRadius: BorderRadius.circular(4)),
          // ),
        ].withGaps(8),
      ),
    );
  }
}
