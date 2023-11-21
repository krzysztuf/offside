import 'package:flutter/material.dart';
import 'package:inspection_sidecar/core/extensions/expand_with.dart';

extension ListWithDividers on Iterable<Widget> {
  Iterable<Widget> withDividers(BuildContext context, {bool horizontal = true}) {
    return expandWith(
      Container(
        width: horizontal ? null : 1,
        height: horizontal ? 1 : null,
        color: Theme.of(context).dividerColor.withOpacity(0.2),
      ),
    );
  }
}
