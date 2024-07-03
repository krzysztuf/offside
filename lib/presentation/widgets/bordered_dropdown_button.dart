import 'package:flutter/material.dart';

class BorderedDropdownButton<T> extends StatefulWidget {
  final Function(T? team) onChanged;
  final T? value;
  final List<DropdownMenuItem<T>> items;
  final double height;
  final String? hint;

  const BorderedDropdownButton({
    super.key,
    required this.items,
    this.value,
    this.height = 48.0,
    this.hint,
    required this.onChanged,
  });

  @override
  State<BorderedDropdownButton> createState() => _BorderedDropdownButtonState<T>();
}

class _BorderedDropdownButtonState<T> extends State<BorderedDropdownButton<T>> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        border: Border.all(
          color: theme.dividerColor,
          width: .5,
        ),
      ),
      child: DropdownButton<T>(
        value: widget.value,
        items: widget.items,
        hint: widget.hint != null ? Text(widget.hint!) : null,
        style: theme.textTheme.labelMedium,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        underline: Container(),
        onChanged: widget.onChanged,
      ),
    );
  }
}
