import 'package:flutter/widgets.dart';

class AsyncSnapshotState {}

class SnapshotIdle extends AsyncSnapshotState {}

class SnapshotWaiting extends AsyncSnapshotState {}

class SnapshotDataReady<Data> extends AsyncSnapshotState {
  final Data data;

  SnapshotDataReady(this.data);
}

class SnapshotHasError extends AsyncSnapshotState {
  final String error;
  final StackTrace stackTrace;

  SnapshotHasError(this.error, this.stackTrace);
}

extension AsyncSnapshotStateExtension<T> on AsyncSnapshot<T> {
  AsyncSnapshotState get state {
    return switch (connectionState) {
      ConnectionState.none => SnapshotIdle(),
      ConnectionState.waiting => SnapshotWaiting(),
      ConnectionState.done => SnapshotDataReady(data),
      _ => SnapshotHasError(error.toString(), stackTrace!),
    };
  }
}
