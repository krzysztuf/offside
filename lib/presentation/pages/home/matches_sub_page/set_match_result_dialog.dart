import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:offside/domain/entities/goals.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/match_outcome.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/presentation/pages/home/matches_sub_page/goals_prediction_editor.dart';
import 'package:offside/presentation/widgets/bordered_dropdown_button.dart';
import 'package:offside/presentation/widgets/enabled.dart';
import 'package:offside/presentation/widgets/offside/team_badge.dart';

class SetMatchResultDialog extends ConsumerStatefulWidget {
  final Match match;
  final Function(MatchOutcome) onScoreSet;

  const SetMatchResultDialog({
    super.key,
    required this.match,
    required this.onScoreSet,
  });

  static Future<void> show(BuildContext context, Match match, Function(MatchOutcome) onScoreSet) async {
    return showDialog(
      context: context,
      builder: (context) => SetMatchResultDialog(
        match: match,
        onScoreSet: onScoreSet,
      ),
    );
  }

  @override
  ConsumerState createState() => _SetMatchResultDialogState();
}

class _SetMatchResultDialogState extends ConsumerState<SetMatchResultDialog> {
  late MatchOutcome outcome;

  Team? get penaltiesWinnerTeam {
    final winnerId = outcome.penaltiesWinnerId;
    final match = widget.match;

    if (winnerId == match.homeTeam?.id) {
      return match.homeTeam;
    } else if (winnerId == match.awayTeam?.id) {
      return match.awayTeam;
    }

    return null;
  }

  @override
  void initState() {
    super.initState();

    outcome = widget.match.outcome ?? const MatchOutcome(goals: Goals());
  }

  @override
  Widget build(BuildContext context) {
    final homeTeam = widget.match.homeTeam;
    final awayTeam = widget.match.awayTeam;

    return AlertDialog(
      title: const Text('Wynik meczu'),
      content: SizedBox(
        height: 200,
        child: Column(
          children: [
            Center(
              child: GoalsPredictionEditor(
                initialPrediction: outcome.goals,
                editable: true,
                onUpdated: (prediction) {
                  setState(() => outcome = outcome.copyWith(goals: prediction));
                },
              ),
            ),
            const Gap(16),
            if (homeTeam != null && awayTeam != null)
              Enabled(
                enabled: widget.match.knockoutStage && outcome.goals.draw,
                child: ListTile(
                  title: const Text('Zwycięzca dogrywki'),
                  contentPadding: EdgeInsets.zero,
                  trailing: BorderedDropdownButton<Team>(
                    value: penaltiesWinnerTeam,
                    items: [homeTeam, awayTeam].map((team) {
                      return DropdownMenuItem(value: team, child: TeamBadge.dense(context, team));
                    }).toList(),
                    onChanged: (team) => setState(() {
                      outcome = outcome.copyWith(penaltiesWinnerId: team!.id);
                    }),
                  ),
                ),
              ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Anuluj'),
        ),
        TextButton(
          onPressed: () {
            if (!outcome.goals.draw) {
              outcome = outcome.copyWith(penaltiesWinnerId: null);
            }

            widget.onScoreSet(outcome);
            Navigator.of(context).pop();
          },
          child: const Text('Zapisz'),
        ),
      ],
    );
  }
}
