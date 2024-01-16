import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:offside/presentation/theme/theme_extensions.dart';
import 'package:offside/presentation/theme/widgets/pill_button.dart';
import 'package:offside/presentation/widgets/enabled.dart';
import 'package:offside/presentation/widgets/inflater.dart';

class GoalsInput extends ConsumerStatefulWidget {
  final Function(int goals) onUpdated;
  final int initialValue;
  final bool editable;

  const GoalsInput({
    super.key,
    required this.initialValue,
    required this.editable,
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
        Inflater(
          inflated: widget.editable,
          child: PillButton(
            icon: Icons.add,
            height: 32,
            onPressed: increment,
          ),
        ),
        const Gap(8),
        Text(
          '$value',
          style: Theme.of(context).widgets.goalsInput.textTheme,
        ),
        const Gap(8),
        Inflater(
          inflated: widget.editable,
          child: Enabled(
            when: value > 0,
            child: PillButton(
              icon: Icons.remove,
              height: 32,
              onPressed: decrement,
            ),
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
