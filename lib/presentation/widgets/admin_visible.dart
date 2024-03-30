import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offside/presentation/providers/user_is_admin.dart';

class AdminVisible extends ConsumerWidget {
  final Widget child;

  const AdminVisible({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Visibility(
      visible: ref.watch(userIsAdminProvider),
      child: child,
    );
  }
}
