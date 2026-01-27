// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_match_dialog_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NewMatchDialogController)
final newMatchDialogControllerProvider = NewMatchDialogControllerProvider._();

final class NewMatchDialogControllerProvider
    extends $NotifierProvider<NewMatchDialogController, NewMatchDialogState> {
  NewMatchDialogControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'newMatchDialogControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$newMatchDialogControllerHash();

  @$internal
  @override
  NewMatchDialogController create() => NewMatchDialogController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NewMatchDialogState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NewMatchDialogState>(value),
    );
  }
}

String _$newMatchDialogControllerHash() =>
    r'c9ed3a2985887b082d8195decb3f85bba657e33e';

abstract class _$NewMatchDialogController
    extends $Notifier<NewMatchDialogState> {
  NewMatchDialogState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<NewMatchDialogState, NewMatchDialogState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<NewMatchDialogState, NewMatchDialogState>,
              NewMatchDialogState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
