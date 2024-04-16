import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/presentation/pages/home/main_sub_page/competition_winner_picker_state.dart';
import 'package:offside/presentation/widgets/bordered_dropdown_button.dart';
import 'package:offside/presentation/widgets/enabled.dart';
import 'package:offside/presentation/widgets/offside/team_badge.dart';

import 'competition_winner_picker_controller.dart';

class CompetitionWinnerPicker extends ConsumerStatefulWidget {
  const CompetitionWinnerPicker({super.key});

  @override
  ConsumerState createState() => _CompetitionWinnerPickerState();
}

class _CompetitionWinnerPickerState extends ConsumerState<CompetitionWinnerPicker> {
  Team? selectedWinner;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(competitionWinnerPickerControllerProvider);
    selectedWinner ??= state.winnerPrediction;

    return SizedBox(
      // height: 56,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                leading: const Icon(Icons.emoji_events_rounded),
                title: const Text('Wytypuj zwycięzcę'),
                subtitle: 'Ten typ będzie zamknięty po rozpoczęciu turnieju,\na za poprawny otrzymasz 10 punktów!'
                    .styledText(context.textTheme.bodySmall!),
                contentPadding: const EdgeInsets.only(left: 8),
              ),
              const Gap(16),
              buildWinnerSelectionRow(state, context),
              const Gap(16),
            ],
          ),
        ),
      ),
    );
  }

  Row buildWinnerSelectionRow(CompetitionWinnerPickerState state, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BorderedDropdownButton<Team>(
          value: selectedWinner,
          height: 34,
          items: state.teams.map((team) {
            return DropdownMenuItem(
              value: team,
              child: TeamBadge(
                team: team,
                badgeRadius: 10,
                textStyle: context.textTheme.bodyMedium!,
                spacing: 12,
                direction: Axis.horizontal,
              ),
            );
          }).toList(),
          onChanged: (team) => setState(() => selectedWinner = team),
        ),
        Enabled(
          enabled: selectedWinner != state.winnerPrediction,
          child: buildSaveButton(state, context),
        ),
      ],
    );
  }

  FilledButton buildSaveButton(CompetitionWinnerPickerState state, BuildContext context) {
    return FilledButton.tonal(
      onPressed: () {
        ref.read(competitionWinnerPickerControllerProvider.notifier).selectWinner(selectedWinner!).then(
          (_) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Row(
                  children: [
                    Icon(Icons.check, color: context.colorScheme.background),
                    const Gap(8),
                    'ZWYCIĘZCA TURNIEJU ZAPISANY'.text,
                  ],
                ),
              ),
            );
          },
        );
      },
      child: SizedBox(
        width: 78,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: switch (state.saving) {
            true => [
                LoadingAnimationWidget.horizontalRotatingDots(color: context.colorScheme.primary, size: 20),
              ],
            false => const [
                Icon(Icons.save),
                Gap(8),
                Text('Zapisz'),
              ],
          },
        ),
      ),
    );
  }
}
