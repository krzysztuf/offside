import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';
import 'package:offside/presentation/pages/home/matches_sub_page/match_card_state.dart';
import 'package:offside/presentation/theme/color_preset.dart';
import 'package:supercharged/supercharged.dart';

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
      child: AnimatedSize(
        duration: 200.milliseconds,
        curve: Curves.fastOutSlowIn,
        child: Container(
          height: 28,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: preset.background,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Center(
              child: _createStatusWidget(preset),
            ),
          ),
        ),
      ),
    );
  }

  ColorPreset _loadPreset(BuildContext context) => switch (betState) {
        BetState.loading || BetState.notPlaced => context.widgetThemes.betStatusPill.pending,
        BetState.placed => context.widgetThemes.betStatusPill.placed,
        BetState.expired => context.widgetThemes.betStatusPill.expired,
      };

  Widget _createStatusWidget(ColorPreset preset) {
    final text = switch (betState) {
      BetState.loading || BetState.notPlaced => 'OCZEKUJE',
      BetState.placed => 'OBSTAWIONY',
      BetState.expired => 'POMINIĘTY',
    };

    final icon = switch (betState) {
      BetState.loading || BetState.notPlaced => Icons.hourglass_bottom_rounded,
      BetState.placed => Icons.check_circle_outline_rounded,
      BetState.expired => Icons.warning_rounded,
    };

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 14,
          color: preset.foreground,
        ),
        const Gap(6),
        Text(text, style: preset.textStyle),
      ],
    );
  }
}
