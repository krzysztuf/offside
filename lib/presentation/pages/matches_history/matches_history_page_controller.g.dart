// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matches_history_page_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MatchesHistoryPageController)
final matchesHistoryPageControllerProvider =
    MatchesHistoryPageControllerProvider._();

final class MatchesHistoryPageControllerProvider
    extends
        $AsyncNotifierProvider<
          MatchesHistoryPageController,
          MatchesHistoryState
        > {
  MatchesHistoryPageControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'matchesHistoryPageControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$matchesHistoryPageControllerHash();

  @$internal
  @override
  MatchesHistoryPageController create() => MatchesHistoryPageController();
}

String _$matchesHistoryPageControllerHash() =>
    r'50a82a4d66c34d90f4888476fc5a1b6c2031c50f';

abstract class _$MatchesHistoryPageController
    extends $AsyncNotifier<MatchesHistoryState> {
  FutureOr<MatchesHistoryState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<MatchesHistoryState>, MatchesHistoryState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<MatchesHistoryState>, MatchesHistoryState>,
              AsyncValue<MatchesHistoryState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
