import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
import 'package:offside/presentation/pages/home/table_sub_page/main_table_controller.dart';

class MainTable extends ConsumerWidget {
  final List<User> users;

  const MainTable({super.key, required this.users});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(mainTableControllerProvider);
    final sortedScores = _sortByPoints(state.userScores);

    return Column(
      children: sortedScores.map(
        (userScore) {
          final user = userScore.key;
          final score = userScore.value;
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(right: 4),
                child: user.avatar(context),
              ),
              title: user.fullName.text,
              subtitle: user.nickname?.text ?? 'tutaj będzie forma'.styledText(context.textTheme.bodySmall!),
              selected: user.id == ref.watch(currentUserIdSettingProvider),
              trailing: Column(
                children: [
                  '$score'.styledText(context.textTheme.titleLarge!),
                  const Gap(4),
                  'punkty'.styledText(context.textTheme.bodySmall!),
                ],
              ),
              onTap: () => context.goNamed('userDetails', extra: user),
            ),
          );
        },
      ).toList(),
    );
  }

  List<MapEntry<User, int>> _sortByPoints(Map<User, int> userScores) {
    return userScores.entries.toList()..sort((a, b) => b.value.compareTo(a.value));
  }
}
