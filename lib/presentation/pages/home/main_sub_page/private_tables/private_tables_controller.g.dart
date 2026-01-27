// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_tables_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PrivateTablesController)
final privateTablesControllerProvider = PrivateTablesControllerProvider._();

final class PrivateTablesControllerProvider
    extends $NotifierProvider<PrivateTablesController, PrivateTablesState> {
  PrivateTablesControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'privateTablesControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$privateTablesControllerHash();

  @$internal
  @override
  PrivateTablesController create() => PrivateTablesController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PrivateTablesState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PrivateTablesState>(value),
    );
  }
}

String _$privateTablesControllerHash() =>
    r'10202960c9f9082447e4c9586c10b56abc850d3a';

abstract class _$PrivateTablesController extends $Notifier<PrivateTablesState> {
  PrivateTablesState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<PrivateTablesState, PrivateTablesState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PrivateTablesState, PrivateTablesState>,
              PrivateTablesState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
