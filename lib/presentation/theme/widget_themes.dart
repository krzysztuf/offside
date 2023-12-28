import 'package:flutter/material.dart';
import 'package:offside/presentation/theme/widgets/team_badge_theme.dart';

import 'widgets/score_input_theme.dart';

class WidgetThemes {
  final ScoreInputTheme scoreInput;
  final TeamBadgeTheme teamBadge;

  WidgetThemes(ThemeData theme)
      : scoreInput = ScoreInputTheme(theme),
        teamBadge = TeamBadgeTheme(theme);
}
