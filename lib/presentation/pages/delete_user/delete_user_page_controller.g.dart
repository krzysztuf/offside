// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_user_page_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DeleteUserPageController)
final deleteUserPageControllerProvider = DeleteUserPageControllerProvider._();

final class DeleteUserPageControllerProvider
    extends $NotifierProvider<DeleteUserPageController, void> {
  DeleteUserPageControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deleteUserPageControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deleteUserPageControllerHash();

  @$internal
  @override
  DeleteUserPageController create() => DeleteUserPageController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$deleteUserPageControllerHash() =>
    r'a0993a67e5a9c99703248a48ff578a8a61e38793';

abstract class _$DeleteUserPageController extends $Notifier<void> {
  void build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<void, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<void, void>,
              void,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
