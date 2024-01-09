import 'package:flutter/material.dart';
import 'package:offside/core/extensions/async_snapshot_states.dart';
import 'package:offside/core/extensions/string_suffix_extensions.dart';
import 'package:offside/domain/entities/fetchable.dart';

class FetchableBuilder<T> extends StatelessWidget {
  final Fetchable<T> fetchable;
  final Widget Function() waiting;
  final Widget Function()? error;
  final Widget Function(T data) child;

  const FetchableBuilder({
    super.key,
    required this.fetchable,
    required this.waiting,
    required this.child,
    this.error,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchable.fetch(),
      builder: (context, snapshot) => switch (snapshot.state) {
        SnapshotWaiting() => waiting(),
        SnapshotDataReady() => child(fetchable.value),
        _ => Container(child: 'Dupsko'.text),
      },
    );
  }
}
