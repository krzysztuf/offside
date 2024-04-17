import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offside/presentation/widgets/icon_text.dart';

class PrivateTables extends ConsumerWidget {
  const PrivateTables({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Center(
      child: FilledButton.tonal(
        onPressed: null,
        child: IconText(
          icon: Icons.add,
          text: 'Nowa tabela',
        ),
      ),
    );
  }
}
