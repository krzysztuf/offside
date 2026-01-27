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
          Map<DateTime, List<Match>>
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
    r'7c64790c08ca5adb2f5cf4d3257de51cf462661b';

abstract class _$MatchesHistoryPageController
    extends $AsyncNotifier<Map<DateTime, List<Match>>> {
  FutureOr<Map<DateTime, List<Match>>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<Map<DateTime, List<Match>>>,
              Map<DateTime, List<Match>>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<Map<DateTime, List<Match>>>,
                Map<DateTime, List<Match>>
              >,
              AsyncValue<Map<DateTime, List<Match>>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
