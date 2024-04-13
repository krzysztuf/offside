import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/presentation/pages/home/matches_sub_page/history/matches_history_controller.dart';
import 'package:offside/presentation/widgets/fetchable_builder.dart';
import 'package:offside/presentation/widgets/offside/team_badge.dart';

class MatchesHistory extends ConsumerWidget {
  const MatchesHistory({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zakończone mecze'),
      ),
      body: switch (ref.watch(matchesHistoryControllerProvider)) {
        AsyncData(value: final matches) => ListView.builder(
            itemCount: matches.length,
            itemBuilder: (context, index) {
              final match = matches[index];
              return ListTile(
                title: FetchableBuilder(
                  fetchable: match.homeTeam,
                  waiting: () => TeamBadge.skeleton(badgeRadius: 12),
                  child: (team) => TeamBadge.dense(team, context),
                ),
              );
            },
          ),
        _ => LoadingAnimationWidget.fourRotatingDots(
            color: context.colorScheme.primary,
            size: 32,
          )
      },
    );
  }
}
