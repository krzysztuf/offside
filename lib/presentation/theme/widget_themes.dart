import 'package:flutter/material.dart';
import 'package:offside/presentation/theme/widgets/team_badge_theme.dart';

import 'widgets/score_input_theme.dart';

class WidgetThemes {
  final ScoreInputTheme goalsInput;
  final TeamBadgeTheme teamBadge;

  WidgetThemes(ThemeData theme)
      : goalsInput = ScoreInputTheme(theme),
        teamBadge = TeamBadgeTheme(theme);
}
