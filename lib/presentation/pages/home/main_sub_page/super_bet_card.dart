import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/goals.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/presentation/widgets/offside/team_badge.dart';

class SuperBetCard extends ConsumerWidget {
  final Match match;
  final User user;

  const SuperBetCard({super.key, required this.match, required this.user});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 172,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildUserRow(context, ref),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TeamBadge.dense(
                    context,
                    match.homeTeam.value,
                    useAbbreviation: true,
                    spacing: 6,
                  ),
                  match.outcome!.goals.asString.styledText(context.textTheme.titleLarge),
                  TeamBadge.dense(
                    context,
                    match.awayTeam.value,
                    useAbbreviation: true,
                    spacing: 6,
                    mirrored: true,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildUserRow(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        user.avatar(context, ref, radius: 10, fontSize: 8),
        const Gap(8),
        user.name.styledText(context.textTheme.bodyMedium),
      ],
    );
  }
}
