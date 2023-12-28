import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offside/presentation/theme/theme_extensions.dart';

class ScoreInput extends ConsumerStatefulWidget {
  const ScoreInput({super.key});

  @override
  ConsumerState<ScoreInput> createState() => _ScoreInputState();
}

class _ScoreInputState extends ConsumerState<ScoreInput> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      '0',
      style: Theme.of(context).widgets.scoreInput.textTheme,
    );
  }
}
