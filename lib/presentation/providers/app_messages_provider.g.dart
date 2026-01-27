// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_messages_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AppMessages)
final appMessagesProvider = AppMessagesProvider._();

final class AppMessagesProvider
    extends $NotifierProvider<AppMessages, List<AppMessage>> {
  AppMessagesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appMessagesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appMessagesHash();

  @$internal
  @override
  AppMessages create() => AppMessages();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<AppMessage> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<AppMessage>>(value),
    );
  }
}

String _$appMessagesHash() => r'ce794a74ad74ed98ac2368a991804ba92efd9cd0';

abstract class _$AppMessages extends $Notifier<List<AppMessage>> {
  List<AppMessage> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<AppMessage>, List<AppMessage>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<AppMessage>, List<AppMessage>>,
              List<AppMessage>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
