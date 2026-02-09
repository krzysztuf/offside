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
    r'ea0c999a51212ee28a96380cdeb89f8770193e87';

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

String _$currentCardMatchHash() => r'd75ae32c54c8031e466ec996406490ccaee15826';

@ProviderFor(currentCardBets)
final currentCardBetsProvider = CurrentCardBetsProvider._();

final class CurrentCardBetsProvider
    extends $FunctionalProvider<List<Bet>, List<Bet>, List<Bet>>
    with $Provider<List<Bet>> {
  CurrentCardBetsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentCardBetsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentCardBetsHash();

  @$internal
  @override
  $ProviderElement<List<Bet>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<Bet> create(Ref ref) {
    return currentCardBets(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Bet> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Bet>>(value),
    );
  }
}

String _$currentCardBetsHash() => r'6491090b4789b487b0f77d90d4151e33b588001e';
