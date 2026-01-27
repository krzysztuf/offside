// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reactive_settings_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CurrentUserIdSetting)
final currentUserIdSettingProvider = CurrentUserIdSettingProvider._();

final class CurrentUserIdSettingProvider
    extends $NotifierProvider<CurrentUserIdSetting, String> {
  CurrentUserIdSettingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentUserIdSettingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentUserIdSettingHash();

  @$internal
  @override
  CurrentUserIdSetting create() => CurrentUserIdSetting();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$currentUserIdSettingHash() =>
    r'ace6d8415437121cb5e4eb8256ba428da4b075b5';

abstract class _$CurrentUserIdSetting extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(ThemeModeSetting)
final themeModeSettingProvider = ThemeModeSettingProvider._();

final class ThemeModeSettingProvider
    extends $NotifierProvider<ThemeModeSetting, int> {
  ThemeModeSettingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'themeModeSettingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$themeModeSettingHash();

  @$internal
  @override
  ThemeModeSetting create() => ThemeModeSetting();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$themeModeSettingHash() => r'8a3d73fbe89c9989a5ae3a722059cd59601a4246';

abstract class _$ThemeModeSetting extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
