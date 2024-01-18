import 'package:flutter/material.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/domain/entities/fetchable.dart';

class FetchableBuilder<T> extends StatelessWidget {
  final Fetchable<T> fetchable;
  final bool force;
  final Widget Function() waiting;
  final Widget Function()? error;
  final Widget Function(T data) child;

  const FetchableBuilder({
    super.key,
    required this.fetchable,
    required this.waiting,
    required this.child,
    this.force = false,
    this.error,
  });

  @override
  Widget build(BuildContext context) {
    if (fetchable.hasValue) {
      return child(fetchable.value);
    }

    return FutureBuilder(
      future: fetchable.fetch(),
      builder: (context, snapshot) => switch (snapshot.connectionState) {
        ConnectionState.waiting => waiting(),
        ConnectionState.done => child(fetchable.value),
        _ => Container(child: 'Dupsko'.text),
      },
    );
  }
}
