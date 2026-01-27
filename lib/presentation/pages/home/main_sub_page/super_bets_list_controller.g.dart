// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'super_bets_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SuperBetsListController)
final superBetsListControllerProvider = SuperBetsListControllerProvider._();

final class SuperBetsListControllerProvider
    extends
        $AsyncNotifierProvider<
          SuperBetsListController,
          Map<Match, List<User>>
        > {
  SuperBetsListControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'superBetsListControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$superBetsListControllerHash();

  @$internal
  @override
  SuperBetsListController create() => SuperBetsListController();
}

String _$superBetsListControllerHash() =>
    r'f389331210b69dd0bca50cd45152cf2a4da0a615';

abstract class _$SuperBetsListController
    extends $AsyncNotifier<Map<Match, List<User>>> {
  FutureOr<Map<Match, List<User>>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<Map<Match, List<User>>>, Map<Match, List<User>>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<Map<Match, List<User>>>,
                Map<Match, List<User>>
              >,
              AsyncValue<Map<Match, List<User>>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
