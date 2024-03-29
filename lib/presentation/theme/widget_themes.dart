import 'package:flutter/material.dart';
import 'package:offside/presentation/theme/bet_status_pill_theme.dart';
import 'package:offside/presentation/theme/shared_widgets_theme.dart';
import 'package:offside/presentation/theme/team_badge_theme.dart';
import 'package:offside/presentation/theme/user_bets_theme.dart';

import 'score_input_theme.dart';

class WidgetThemes {
  final ScoreInputTheme goalsInput;
  final TeamBadgeTheme teamBadge;
  final BetStatusPillTheme betStatusPill;
  final UserBetsTheme userBets;
  final SharedWidgetsTheme sharedWidgets;

  WidgetThemes(ThemeData theme)
      : goalsInput = ScoreInputTheme(theme),
        teamBadge = TeamBadgeTheme(theme),
        betStatusPill = BetStatusPillTheme(theme),
        userBets = UserBetsTheme(theme),
        sharedWidgets = SharedWidgetsTheme(theme);
}
