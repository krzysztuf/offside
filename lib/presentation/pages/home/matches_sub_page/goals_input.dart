import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offside/presentation/theme/theme_extensions.dart';
import 'package:offside/presentation/widgets/enabled.dart';
import 'package:offside/presentation/widgets/inflater.dart';
import 'package:offside/presentation/widgets/pill_button.dart';
import 'package:simple_animations/animation_builder/custom_animation_builder.dart';
import 'package:supercharged/supercharged.dart';

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
    var theme = Theme.of(context).widgets.goalsInput;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Inflater(
          inflated: widget.editable,
          child: PillButton(
            icon: Icons.add,
            height: 28,
            onPressed: increment,
          ),
        ),
        SizedBox(
          height: 56,
          child: CustomAnimationBuilder(
            tween: 1.0.tweenTo(1.4),
            curve: Curves.easeInOutCubic,
            duration: 400.milliseconds,
            control: widget.editable ? Control.playReverse : Control.play,
            builder: (context, scale, child) {
              return Center(
                child: Transform.scale(
                  scale: scale,
                  child: Text(
                    '${value >= 0 ? value : '-'}',
                    style: theme.textTheme,
                  ),
                ),
              );
            },
          ),
        ),
        Inflater(
          inflated: widget.editable,
          child: Enabled(
            enabled: value > 0,
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
