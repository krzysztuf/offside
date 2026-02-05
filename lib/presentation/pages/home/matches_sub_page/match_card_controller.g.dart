// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_card_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MatchCardController)
final matchCardControllerProvider = MatchCardControllerProvider._();

final class MatchCardControllerProvider
    extends $NotifierProvider<MatchCardController, MatchCardState> {
  MatchCardControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'matchCardControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$matchCardControllerHash();

  @$internal
  @override
  MatchCardController create() => MatchCardController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MatchCardState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MatchCardState>(value),
    );
  }
}

String _$matchCardControllerHash() =>
    r'7c992619c387d1cfb044b2d06e24ca83646be5be';

abstract class _$MatchCardController extends $Notifier<MatchCardState> {
  MatchCardState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<MatchCardState, MatchCardState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MatchCardState, MatchCardState>,
              MatchCardState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(currentCardMatch)
final currentCardMatchProvider = CurrentCardMatchProvider._();

final class CurrentCardMatchProvider
    extends $FunctionalProvider<Match, Match, Match>
    with $Provider<Match> {
  CurrentCardMatchProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentCardMatchProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentCardMatchHash();

  @$internal
  @override
  $ProviderElement<Match> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Match create(Ref ref) {
    return currentCardMatch(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Match value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Match>(value),
    );
  }
}

String _$currentCardMatchHash() => r'2be412cc7dacc65e02517fb87d225d6fe1fe4ed2';
