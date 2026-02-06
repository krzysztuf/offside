// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matches_sub_page_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MatchesSubPageController)
final matchesSubPageControllerProvider = MatchesSubPageControllerProvider._();

final class MatchesSubPageControllerProvider
    extends $NotifierProvider<MatchesSubPageController, MatchesSubPageState> {
  MatchesSubPageControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'matchesSubPageControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$matchesSubPageControllerHash();

  @$internal
  @override
  MatchesSubPageController create() => MatchesSubPageController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MatchesSubPageState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MatchesSubPageState>(value),
    );
  }
}

String _$matchesSubPageControllerHash() =>
    r'b28ea504148e2fb055c8a58495eed42f2c78c5de';

abstract class _$MatchesSubPageController
    extends $Notifier<MatchesSubPageState> {
  MatchesSubPageState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<MatchesSubPageState, MatchesSubPageState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MatchesSubPageState, MatchesSubPageState>,
              MatchesSubPageState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
