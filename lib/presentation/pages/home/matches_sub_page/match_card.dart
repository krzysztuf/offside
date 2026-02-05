import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/goals.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/match_outcome.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/presentation/pages/home/matches_sub_page/bets/match_bets.dart';
import 'package:offside/presentation/pages/home/matches_sub_page/bets/match_bets_controller.dart';
import 'package:offside/presentation/pages/home/matches_sub_page/expired_bet_goals.dart';
import 'package:offside/presentation/pages/home/matches_sub_page/goals_prediction_editor.dart';
import 'package:offside/presentation/pages/home/matches_sub_page/match_card_controller.dart';
import 'package:offside/presentation/pages/home/matches_sub_page/match_card_state.dart';
import 'package:offside/presentation/pages/home/matches_sub_page/match_kick_off_status.dart';
import 'package:offside/presentation/pages/home/matches_sub_page/set_match_result_dialog.dart';
import 'package:offside/presentation/providers/date_time_provider.dart';
import 'package:offside/presentation/widgets/admin_visible.dart';
import 'package:offside/presentation/widgets/alternative_inflater.dart';
import 'package:offside/presentation/widgets/bordered_dropdown_button.dart';
import 'package:offside/presentation/widgets/enabled.dart';
import 'package:offside/presentation/widgets/icon_with_text.dart';
import 'package:offside/presentation/widgets/inflater.dart';
import 'package:offside/presentation/widgets/muted_information_label.dart';
import 'package:offside/presentation/widgets/offside/team_badge.dart';
import 'package:supercharged/supercharged.dart';

import 'bets/bet_status_pill.dart';

class MatchCard extends ConsumerStatefulWidget {
  const MatchCard({super.key});

  @override
  ConsumerState<MatchCard> createState() => _MatchCardState();
}

enum AdminAction {
  remove,
  setScore,
}

class _MatchCardState extends ConsumerState<MatchCard> {
  var editingPrediction = false;
  Goals? editedPrediction;
  Team? penaltiesWinner;
  Team? editedPenaltiesWinner;

  bool get editedPredictionIsDraw => editedPrediction?.draw ?? true;

  bool get editedPenaltiesWinnerIsDifferent {
    return editedPenaltiesWinner != null && editedPenaltiesWinner != penaltiesWinner;
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(matchCardControllerProvider);
    final teamsLoaded = state.match.homeTeam != null && state.match.awayTeam != null;
    if (penaltiesWinner == null && teamsLoaded) {
      if (state.bet != null) {
        penaltiesWinner = state.bet!.prediction.penaltiesWinnerId == state.match.homeTeam!.id
            ? state.match.homeTeam
            : state.match.awayTeam;

        penaltiesWinner ??= state.match.homeTeam;
      } else {
        penaltiesWinner = state.match.homeTeam;
      }
    }

    return Card(
      elevation: 3,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              buildHeader(state),
              const Gap(8),
              buildTeamGoalsPredictionRow(state),
              const Gap(8),
              if (state.match.knockoutStage) ...[
                buildPenaltyWinnerRow(state),
              ],
              buildFooter(state, context),
            ],
          ),
        ),
      ),
    );
  }

  Row buildHeader(MatchCardState state) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MutedInformationLabel(
          icon: Icons.emoji_events_outlined,
          text: state.match.stage,
        ),
        AdminVisible(
          child: SizedBox.square(
            dimension: 32,
            child: PopupMenuButton<AdminAction>(
              iconSize: 16,
              icon: const Icon(Icons.sports_score),
              offset: const Offset(64, 0),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: AdminAction.setScore,
                  onTap: () => updateMatchScore(context, ref, state.match),
                  child: const IconWithText(icon: Icons.edit_note, text: 'Ustaw wynik'),
                ),
                PopupMenuItem(
                  value: AdminAction.remove,
                  onTap: () async => await maybeRemoveMatch(context),
                  child: const IconWithText(icon: Icons.delete, text: 'Usuń'),
                ),
              ],
              onSelected: (action) {},
            ),
          ),
        ),
        MatchKickOffStatus(match: state.match),
      ],
    );
  }

  Row buildTeamGoalsPredictionRow(MatchCardState state) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildTeamBadge(state.match.homeTeam, context),
        const Gap(4),
        buildScorePrediction(state),
        const Gap(4),
        buildTeamBadge(state.match.awayTeam, context),
      ],
    );
  }

  SizedBox buildScorePrediction(MatchCardState state) {
    return SizedBox(
      width: 140,
      child: switch (state.betState) {
        BetState.loading => LoadingAnimationWidget.fourRotatingDots(
            size: 32,
            color: context.colorScheme.primary,
          ),
        BetState.expired => const ExpiredBetGoals(),
        _ => GoalsPredictionEditor(
            initialPrediction: editedPrediction ?? state.bet?.prediction.goals ?? const Goals(),
            editable: state.betState == BetState.notPlaced || editingPrediction,
            onUpdated: (prediction) => setState(() => editedPrediction = prediction),
          ),
      },
    );
  }

  Widget buildTeamBadge(Team? team, BuildContext context) {
    final textStyle = context.textTheme.bodyLarge;
    return SizedBox(
      width: 88,
      child: team != null
          ? TeamBadge(
              team: team,
              badgeRadius: 22,
              textStyle: textStyle,
            )
          : TeamBadge.skeleton(),
    );
  }

  SizedBox buildFooter(MatchCardState state, BuildContext context) {
    var now = ref.read(dateTimeProvider);
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BetStatusPill(betState: state.betState),
          if (state.loading) ...[
            LoadingAnimationWidget.fourRotatingDots(
              color: context.colorScheme.primary,
              size: 32,
            ),
          ],
          Enabled(
            enabled: !state.loading,
            child: Row(
              children: [
                Visibility(
                  visible: state.match.afterKickOff(now),
                  child: FilledButton.tonalIcon(
                    icon: const Icon(Icons.group, size: 18),
                    label: const Text('Typy'),
                    onPressed: () => showOtherUsersPredictionsSheet(context, state.match),
                  ),
                ),
                Visibility(
                  visible: editingPrediction &&
                      editedPrediction == state.bet!.prediction.goals &&
                      !editedPenaltiesWinnerIsDifferent,
                  child: FilledButton.tonalIcon(
                      icon: const Icon(Icons.cancel, size: 18),
                      label: const Text('Anuluj'),
                      onPressed: () => setState(() => _finishEditing())),
                ),
                Visibility(
                  visible: editingPrediction && editedPrediction != state.bet!.prediction.goals ||
                      state.betState == BetState.notPlaced ||
                      editedPenaltiesWinnerIsDifferent,
                  child: Enabled(
                    enabled: (editedPredictionIsDraw && editedPenaltiesWinner != null) ||
                        !editedPredictionIsDraw ||
                        !state.match.knockoutStage,
                    child: FilledButton.tonalIcon(
                        icon: const Icon(Icons.sports_soccer_rounded, size: 18),
                        label: const Text('Typuj'),
                        onPressed: () async => await _saveUserPrediction(state.match, now)),
                  ),
                ),
                Visibility(
                  visible: !editingPrediction && state.betState == BetState.placed && !state.match.afterKickOff(now),
                  child: FilledButton.tonalIcon(
                    icon: const Icon(Icons.edit, size: 18),
                    label: const Text('Zmień'),
                    onPressed: () {
                      setState(() {
                        editedPrediction = state.bet!.prediction.goals.copyWith();
                        editedPenaltiesWinner = penaltiesWinner?.copyWith();
                        editingPrediction = true;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _saveUserPrediction(Match match, DateTime now) async {
    if (match.beingPlayed(now)) {
      _showErrorDialog('Mecz już się zaczął');
      return;
    }

    editedPrediction ??= const Goals();
    penaltiesWinner = editedPenaltiesWinner;

    await ref.read(matchCardControllerProvider.notifier).updatePrediction(
          MatchOutcome(
            goals: editedPrediction!,
            penaltiesWinnerId: editedPredictionIsDraw ? penaltiesWinner?.id : null,
          ),
        );

    _finishEditing();
  }

  void _finishEditing() {
    setState(() {
      editedPrediction = null;
      editedPenaltiesWinner = null;
      editingPrediction = false;
    });
  }

  void showOtherUsersPredictionsSheet(BuildContext context, Match match) {
    showFlexibleBottomSheet(
      context: context,
      duration: 400.milliseconds,
      isSafeArea: true,
      initHeight: 0.8,
      anchors: [0.0, 0.8, 1.0],
      bottomSheetBorderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
      builder: (context, scrollController, bottomSheetOffset) {
        return SingleChildScrollView(
          controller: scrollController,
          child: ProviderScope(
            overrides: [
              matchBetsControllerProvider.overrideWith(() => MatchBetsController()),
              matchOfBetsToShowProvider.overrideWith((_) => match),
            ],
            child: const MatchBets(),
          ),
        );
      },
    );
  }

  Future<void> maybeRemoveMatch(BuildContext context) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(title: const Text('Usunąć mecz?'), actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Anuluj'),
            ),
            TextButton(
              onPressed: () {
                ref.read(matchCardControllerProvider.notifier).removeMatch();
                Navigator.of(context).pop();
              },
              child: const Text('Usuń'),
            )
          ]);
        });
  }

  Future<void> updateMatchScore(BuildContext context, WidgetRef ref, Match match) {
    return SetMatchResultDialog.show(context, match, (outcome) {
      ref.read(matchCardControllerProvider.notifier).setResult(outcome);
    });
  }

  Widget buildPenaltyWinnerRow(MatchCardState state) {
    final match = state.match;
    if (match.homeTeam == null || match.awayTeam == null) {
      return const SizedBox.shrink();
    }

    final shouldShowPenaltiesWinner =
        state.betState == BetState.notPlaced || editingPrediction || (state.bet?.prediction.goals.draw ?? false);
    return AnimatedContainer(
      duration: 400.milliseconds,
      curve: Curves.fastOutSlowIn,
      height: shouldShowPenaltiesWinner ? 80 : 0,
      child: Inflater(
        scaleFactor: 1,
        inflated: shouldShowPenaltiesWinner,
        child: Column(
          children: [
            const Gap(8),
            Enabled(
              enabled: editedPredictionIsDraw,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  'W dogrywce wygra:'.styledText(context.textTheme.bodyMedium),
                  AlternativeInflater(
                    useAlternative: editingPrediction || state.betState == BetState.notPlaced,
                    builder: () => TeamBadge.dense(context, penaltiesWinner!),
                    alternativeBuilder: () => BorderedDropdownButton<Team>(
                      value: editedPenaltiesWinner,
                      height: 40,
                      hint: 'Wybierz drużynę',
                      items: [match.homeTeam!, match.awayTeam!].map((team) {
                        return DropdownMenuItem(value: team, child: TeamBadge.dense(context, team));
                      }).toList(),
                      onChanged: (team) => setState(() => editedPenaltiesWinner = team),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(24),
          ],
        ),
      ),
    );
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Błąd'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
