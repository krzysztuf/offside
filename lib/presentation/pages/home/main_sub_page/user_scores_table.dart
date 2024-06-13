import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/entities/user_score_summary.dart';
import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
import 'package:offside/presentation/widgets/offside/recent_form_dots.dart';

class UserScoresTable extends ConsumerWidget {
  final List<UserScoreSummary> userScores;
  final Widget? header;

  const UserScoresTable({
    super.key,
    required this.userScores,
    this.header,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      elevation: 2,
      child: Column(
        children: [
          if (header != null) ...[
            header!,
            const Divider(height: 1),
          ],
          ...userScores.mapIndexed(
            (index, userScores) {
              final user = userScores.user;

              return ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                leading: buildStandingAndAvatar(context, ref, index + 1, user),
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
          )
        ].toList(),
      ),
    );
  }

  Widget buildStandingAndAvatar(BuildContext context, WidgetRef ref, int standing, User user) {
    return SizedBox(
      width: 80,
      child: Row(
        children: [
          SizedBox(
            width: 24,
            child: Center(
              child: CircleAvatar(
                radius: 20,
                backgroundColor: context.colorScheme.secondaryContainer,
                child: '$standing'.styledText(
                  context.textTheme.bodyMedium!.copyWith(color: context.colorScheme.secondary),
                ),
              ),
            ),
          ),
          const Gap(12),
          user.avatar(context, ref, radius: 20, fontSize: 14),
        ],
      ),
    );
  }

  Widget buildRecentForm(BuildContext context, UserScoreSummary userScores) {
    if (userScores.recentPredictionsScores.isEmpty) {
      return 'Brak ostatnich typowań'.styledText(context.textTheme.bodySmall!);
    }

    return RecentFormDots(userScore: userScores);
  }
}
