import 'dart:developer';

import 'package:flutter/material.dart';

extension ScheduledSnackBar on ScaffoldMessengerState {
  void scheduleSnackBar({SnackBar? snackBar, String? text}) {
    if (snackBar == null && text == null) {
      log('both snackbar and text null when scheduling snackbar');
      return;
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      snackBar ??= SnackBar(content: Text(text!));
      showSnackBar(snackBar!);
    });
  }
}
