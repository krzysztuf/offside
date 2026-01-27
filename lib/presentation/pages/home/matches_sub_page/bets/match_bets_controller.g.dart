// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_bets_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MatchBetsController)
final matchBetsControllerProvider = MatchBetsControllerProvider._();

final class MatchBetsControllerProvider
    extends $NotifierProvider<MatchBetsController, MatchBetsState> {
  MatchBetsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'matchBetsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$matchBetsControllerHash();

  @$internal
  @override
  MatchBetsController create() => MatchBetsController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MatchBetsState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MatchBetsState>(value),
    );
  }
}

String _$matchBetsControllerHash() =>
    r'2f5967ad4486faf7f0e7bd5d8aa4932751bf6243';

abstract class _$MatchBetsController extends $Notifier<MatchBetsState> {
  MatchBetsState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<MatchBetsState, MatchBetsState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MatchBetsState, MatchBetsState>,
              MatchBetsState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(matchOfBetsToShow)
final matchOfBetsToShowProvider = MatchOfBetsToShowProvider._();

final class MatchOfBetsToShowProvider
    extends $FunctionalProvider<Match, Match, Match>
    with $Provider<Match> {
  MatchOfBetsToShowProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'matchOfBetsToShowProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$matchOfBetsToShowHash();

  @$internal
  @override
  $ProviderElement<Match> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Match create(Ref ref) {
    return matchOfBetsToShow(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Match value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Match>(value),
    );
  }
}

String _$matchOfBetsToShowHash() => r'23788130d60d6b8c6c4b6c4d350c609a6246099c';
