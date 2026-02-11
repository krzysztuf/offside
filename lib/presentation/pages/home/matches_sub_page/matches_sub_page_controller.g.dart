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
    extends $AsyncNotifierProvider<MatchesSubPageController, MatchesData> {
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
}

String _$matchesSubPageControllerHash() =>
    r'894ef57fbe7e3d732dc825760d3290528666b10e';

abstract class _$MatchesSubPageController extends $AsyncNotifier<MatchesData> {
  FutureOr<MatchesData> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<MatchesData>, MatchesData>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<MatchesData>, MatchesData>,
              AsyncValue<MatchesData>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
