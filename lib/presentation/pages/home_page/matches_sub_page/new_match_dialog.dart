import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:offside/core/extensions/list_with_gaps.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/domain/entities/fetchable.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/new_match_dialog_controller.dart';
import 'package:offside/presentation/widgets/bordered_dropdown_button.dart';
import 'package:offside/presentation/widgets/enabled.dart';
import 'package:offside/presentation/widgets/offside/team_badge.dart';
import 'package:supercharged/supercharged.dart';

class NewMatchDialog extends ConsumerStatefulWidget {
  final Function(Match) onCreated;

  const NewMatchDialog({
    super.key,
    required this.onCreated,
  });

  static Future<void> show(BuildContext context, Function(Match) onCreated) async {
    return showDialog(
      context: context,
      builder: (context) => NewMatchDialog(onCreated: onCreated),
    );
  }

  @override
  ConsumerState createState() => _NewMatchDialogState();
}

class _NewMatchDialogState extends ConsumerState<NewMatchDialog> {
  Team? homeTeam;
  Team? awayTeam;

  DateTime? kickOff;
  String stage = '';

  bool cupStage = false;

  final dateTimeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(newMatchDialogControllerProvider);
    return AlertDialog(
      title: 'Nowy Mecz'.text,
      content: SizedBox(
        width: 500,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('Gospodarz'),
                contentPadding: EdgeInsets.zero,
                trailing: BorderedDropdownButton<Team>(
                  value: homeTeam,
                  items: state.teams
                      .map((team) => DropdownMenuItem(value: team, child: buildDenseTeamBadge(team, context)))
                      .toList(),
                  onChanged: (team) => setState(() => homeTeam = team),
                ),
              ),
              ListTile(
                title: const Text('Gość'),
                contentPadding: EdgeInsets.zero,
                trailing: BorderedDropdownButton<Team>(
                  value: awayTeam,
                  items: state.teams
                      .map((team) => DropdownMenuItem(value: team, child: buildDenseTeamBadge(team, context)))
                      .toList(),
                  onChanged: (team) => setState(() => awayTeam = team),
                ),
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Data i godzina', filled: true),
                controller: dateTimeController,
                onTap: promptMatchKickOffDate,
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Etap', filled: true),
                onChanged: (value) => setState(() => stage = value),
              ),
              CheckboxListTile(
                contentPadding: EdgeInsets.zero,
                value: cupStage,
                onChanged: (value) => setState(() => cupStage = value ?? false),
                title: const Text('Faza pucharowa'),
              ),
            ].withGaps(16)),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Anuluj'),
        ),
        Enabled(
          enabled: homeTeam != null && awayTeam != null && kickOff != null,
          child: TextButton(
            onPressed: () {
              widget.onCreated(Match(
                homeTeam: LocalFetchable(homeTeam!),
                awayTeam: LocalFetchable(awayTeam!),
                kickOffDate: kickOff!,
                // todo: add missing properties
                // stage: stage,
                // cupStage: cupStage,
              ));

              Navigator.of(context).pop();
            },
            child: const Text('Zapisz'),
          ),
        ),
      ],
    );
  }

  TeamBadge buildDenseTeamBadge(Team team, BuildContext context) {
    return TeamBadge(
      team: team,
      direction: Axis.horizontal,
      badgeRadius: 6,
      textStyle: context.textTheme.bodyMedium,
    );
  }

  void promptMatchKickOffDate() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(50.days),
    ).then((date) {
      if (date == null) {
        return;
      }

      showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
        builder: (BuildContext context, Widget? child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!,
        ),
      ).then((time) {
        if (time == null) {
          return;
        }

        setState(() {
          kickOff = DateTime(
            date.year,
            date.month,
            date.day,
            time.hour,
            time.minute,
          );

          dateTimeController.text = DateFormat('dd/MM/yyyy HH:mm').format(kickOff!);
        });
      });
    });
  }
}
