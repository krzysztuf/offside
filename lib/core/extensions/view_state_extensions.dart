import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/extensions/scheduled_snack_bar.dart';
import 'package:offside/presentation/view_state.dart';
import 'package:supercharged/supercharged.dart';

extension SnackBarOnError on ViewState {
  void showSnackBarOnError(BuildContext context) {
    if (hasError) {
      ScaffoldMessenger.of(context).scheduleSnackBar(
        snackBar: SnackBar(
          duration: 1.days,
          behavior: SnackBarBehavior.floating,
          showCloseIcon: true,
          content: Row(
            children: [
              Icon(
                Icons.warning_amber,
                color: Theme.of(context).colorScheme.onInverseSurface,
              ),
              const Gap(8),
              Text(error!),
            ],
          ),
        ),
      );
      error = null;
    }
  }
}
