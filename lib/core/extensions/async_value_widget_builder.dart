import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offside/presentation/widgets/if.dart';

class DataStore<T> {
  T value;

  DataStore(this.value);
}

extension AsyncValueWidgetBuilder<T> on AsyncValue<T> {
  Widget build({
    required DataStore<T> store,
    required Widget Function(T value) builder,
    Widget Function()? loading,
  }) {
    return when(
      data: (data) {
        store.value = data;
        return builder(data);
      },
      error: (error, stackTrace) {
        log(error.toString(), stackTrace: stackTrace);
        return builder(store.value);
      },
      loading: () => If(
        () => loading != null,
        then: () => loading!.call(),
        orElse: () => builder(store.value),
      ),
    );
  }
}
