import 'package:flutter/material.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/presentation/pages/home_page/matches_sub_page/match_bet_card_state.dart';
import 'package:offside/presentation/theme/bet_status_pill_theme.dart';

class BetStatusPill extends StatelessWidget {
  final BetState betState;

  const BetStatusPill({
    super.key,
    required this.betState,
  });

  @override
  Widget build(BuildContext context) {
    final preset = _loadPreset(context);
    return Material(
      elevation: 0.5,
      borderRadius: BorderRadius.circular(16),
      color: Colors.transparent,
      child: Container(
        height: 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: preset.background,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Center(
            child: Text(_statusText, style: preset.textStyle),
          ),
        ),
      ),
    );
  }

  PillPreset _loadPreset(BuildContext context) => switch (betState) {
        BetState.loading => context.widgetThemes.betStatusPill.pending,
        BetState.notPlaced => context.widgetThemes.betStatusPill.pending,
        BetState.placed => context.widgetThemes.betStatusPill.placed,
      };

  String get _statusText => switch (betState) {
        BetState.loading => 'oczekuje',
        BetState.notPlaced => 'oczekuje',
        BetState.placed => 'obstawiony',
      };
}
