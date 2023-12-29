import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:offside/presentation/theme/theme_extensions.dart';
import 'package:offside/presentation/theme/widgets/circle_button.dart';
import 'package:offside/presentation/widgets/enabled.dart';

class ScoreInput extends ConsumerStatefulWidget {
  final Function(int score) onUpdated;

  const ScoreInput({
    super.key,
    required this.onUpdated,
  });

  @override
  ConsumerState<ScoreInput> createState() => _ScoreInputState();
}

class _ScoreInputState extends ConsumerState<ScoreInput> {
  var value = 0;

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
    return Column(
      children: [
        CircleButton(
          icon: Icons.add,
          size: 22,
          onPressed: increment,
        ),
        const Gap(8),
        Text(
          '$value',
          style: Theme.of(context).widgets.scoreInput.textTheme,
        ),
        const Gap(8),
        Enabled(
          when: value > 0,
          child: CircleButton(
            icon: Icons.remove,
            size: 22,
            onPressed: decrement,
          ),
        ),
      ],
    );
  }

  void increment() {
    setState(() => value++);
    widget.onUpdated(value);
  }

  void decrement() {
    if (value > 0) {
      setState(() => value--);
      widget.onUpdated(value);
    }
  }
}
