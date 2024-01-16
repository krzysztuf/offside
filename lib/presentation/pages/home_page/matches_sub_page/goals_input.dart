import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:offside/presentation/theme/theme_extensions.dart';
import 'package:offside/presentation/theme/widgets/circle_button.dart';
import 'package:offside/presentation/widgets/enabled.dart';

class GoalsInput extends ConsumerStatefulWidget {
  final Function(int goals) onUpdated;
  final int initialValue;

  const GoalsInput({
    super.key,
    required this.initialValue,
    required this.onUpdated,
  });

  @override
  ConsumerState<GoalsInput> createState() => _GoalsInputState();
}

class _GoalsInputState extends ConsumerState<GoalsInput> {
  var value = 0;

  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    value = widget.initialValue;
  }

  @override
  void didUpdateWidget(GoalsInput oldWidget) {
    value = widget.initialValue;
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleButton(
          icon: Icons.add,
          size: 22,
          onPressed: increment,
        ),
        const Gap(8),
        Text(
          '$value',
          style: Theme.of(context).widgets.goalsInput.textTheme,
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
