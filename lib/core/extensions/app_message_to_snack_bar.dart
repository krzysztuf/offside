import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:offside/core/utils/app_message.dart';

extension AppMessageToSnackBar on AppMessage {
  IconData get icon {
    switch (type) {
      case MessageType.info:
        return Icons.info_outline;
      case MessageType.error:
        return Icons.error;
      case MessageType.warning:
        return Icons.warning;
      default:
        return Icons.help;
    }
  }

  SnackBar toSnackBar(ColorScheme scheme) {
    return SnackBar(
      content: Row(
        children: [
          Icon(
            icon,
            color: scheme.onInverseSurface,
            size: 32,
          ),
          const Gap(24),
          Expanded(child: Text(message)),
        ],
      ),
    );
  }
}
