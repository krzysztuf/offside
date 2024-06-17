import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

extension ListWithGaps on Iterable<Widget> {
  List<Widget> withGaps(double size) {
    return expandWith(Gap(size)).toList();
  }

  Iterable<Widget> withDividers(BuildContext context, {bool horizontal = true}) {
    return expandWith(
      Container(
        width: horizontal ? null : 1,
        height: horizontal ? 1 : null,
        color: Theme.of(context).dividerColor.withOpacity(0.2),
      ),
    );
  }

  Iterable<Widget> expandWith(Widget expander) {
    if (isEmpty) {
      return this;
    }

    return expand((widget) => [widget, expander]).toList()..removeLast();
  }
}
