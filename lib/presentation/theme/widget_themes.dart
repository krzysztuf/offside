import 'package:flutter/material.dart';
import 'package:offside/presentation/theme/bet_status_pill_theme.dart';
import 'package:offside/presentation/theme/team_badge_theme.dart';

import 'score_input_theme.dart';

class WidgetThemes {
  final ScoreInputTheme goalsInput;
  final TeamBadgeTheme teamBadge;
  final BetStatusPillTheme betStatusPill;

  WidgetThemes(ThemeData theme)
      : goalsInput = ScoreInputTheme(theme),
        teamBadge = TeamBadgeTheme(theme),
        betStatusPill = BetStatusPillTheme(theme);
}
