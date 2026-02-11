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
    extends $AsyncNotifierProvider<PrivateTablesController, PrivateTablesData> {
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
}

String _$privateTablesControllerHash() =>
    r'9ef25acdf373b1d0294704c08c9c329642b93ea2';

abstract class _$PrivateTablesController
    extends $AsyncNotifier<PrivateTablesData> {
  FutureOr<PrivateTablesData> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<PrivateTablesData>, PrivateTablesData>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<PrivateTablesData>, PrivateTablesData>,
              AsyncValue<PrivateTablesData>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
