// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_use_cases.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getBoolSettingUseCaseHash() =>
    r'4837d2bef9daedfa0968249e3e489670cd63d75a';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef GetBoolSettingUseCaseRef
    = AutoDisposeProviderRef<SettingsGetUseCase<bool>>;

/// See also [getBoolSettingUseCase].
@ProviderFor(getBoolSettingUseCase)
const getBoolSettingUseCaseProvider = GetBoolSettingUseCaseFamily();

/// See also [getBoolSettingUseCase].
class GetBoolSettingUseCaseFamily extends Family<SettingsGetUseCase<bool>> {
  /// See also [getBoolSettingUseCase].
  const GetBoolSettingUseCaseFamily();

  /// See also [getBoolSettingUseCase].
  GetBoolSettingUseCaseProvider call(
    AppSetting setting,
  ) {
    return GetBoolSettingUseCaseProvider(
      setting,
    );
  }

  @override
  GetBoolSettingUseCaseProvider getProviderOverride(
    covariant GetBoolSettingUseCaseProvider provider,
  ) {
    return call(
      provider.setting,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getBoolSettingUseCaseProvider';
}

/// See also [getBoolSettingUseCase].
class GetBoolSettingUseCaseProvider
    extends AutoDisposeProvider<SettingsGetUseCase<bool>> {
  /// See also [getBoolSettingUseCase].
  GetBoolSettingUseCaseProvider(
    this.setting,
  ) : super.internal(
          (ref) => getBoolSettingUseCase(
            ref,
            setting,
          ),
          from: getBoolSettingUseCaseProvider,
          name: r'getBoolSettingUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getBoolSettingUseCaseHash,
          dependencies: GetBoolSettingUseCaseFamily._dependencies,
          allTransitiveDependencies:
              GetBoolSettingUseCaseFamily._allTransitiveDependencies,
        );

  final AppSetting setting;

  @override
  bool operator ==(Object other) {
    return other is GetBoolSettingUseCaseProvider && other.setting == setting;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, setting.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$setBoolSettingUseCaseHash() =>
    r'b31fe7b0ae847f5b157bfa4cac5d70b5be3daae8';
typedef SetBoolSettingUseCaseRef
    = AutoDisposeProviderRef<SettingsSetUseCase<bool>>;

/// See also [setBoolSettingUseCase].
@ProviderFor(setBoolSettingUseCase)
const setBoolSettingUseCaseProvider = SetBoolSettingUseCaseFamily();

/// See also [setBoolSettingUseCase].
class SetBoolSettingUseCaseFamily extends Family<SettingsSetUseCase<bool>> {
  /// See also [setBoolSettingUseCase].
  const SetBoolSettingUseCaseFamily();

  /// See also [setBoolSettingUseCase].
  SetBoolSettingUseCaseProvider call(
    AppSetting setting,
    bool value,
  ) {
    return SetBoolSettingUseCaseProvider(
      setting,
      value,
    );
  }

  @override
  SetBoolSettingUseCaseProvider getProviderOverride(
    covariant SetBoolSettingUseCaseProvider provider,
  ) {
    return call(
      provider.setting,
      provider.value,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'setBoolSettingUseCaseProvider';
}

/// See also [setBoolSettingUseCase].
class SetBoolSettingUseCaseProvider
    extends AutoDisposeProvider<SettingsSetUseCase<bool>> {
  /// See also [setBoolSettingUseCase].
  SetBoolSettingUseCaseProvider(
    this.setting,
    this.value,
  ) : super.internal(
          (ref) => setBoolSettingUseCase(
            ref,
            setting,
            value,
          ),
          from: setBoolSettingUseCaseProvider,
          name: r'setBoolSettingUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$setBoolSettingUseCaseHash,
          dependencies: SetBoolSettingUseCaseFamily._dependencies,
          allTransitiveDependencies:
              SetBoolSettingUseCaseFamily._allTransitiveDependencies,
        );

  final AppSetting setting;
  final bool value;

  @override
  bool operator ==(Object other) {
    return other is SetBoolSettingUseCaseProvider &&
        other.setting == setting &&
        other.value == value;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, setting.hashCode);
    hash = _SystemHash.combine(hash, value.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$getIntSettingUseCaseHash() =>
    r'4ce13a6f8cdee03e87adf9b03fedac6ca5a7e0c2';
typedef GetIntSettingUseCaseRef
    = AutoDisposeProviderRef<SettingsGetUseCase<int>>;

/// See also [getIntSettingUseCase].
@ProviderFor(getIntSettingUseCase)
const getIntSettingUseCaseProvider = GetIntSettingUseCaseFamily();

/// See also [getIntSettingUseCase].
class GetIntSettingUseCaseFamily extends Family<SettingsGetUseCase<int>> {
  /// See also [getIntSettingUseCase].
  const GetIntSettingUseCaseFamily();

  /// See also [getIntSettingUseCase].
  GetIntSettingUseCaseProvider call(
    AppSetting setting,
  ) {
    return GetIntSettingUseCaseProvider(
      setting,
    );
  }

  @override
  GetIntSettingUseCaseProvider getProviderOverride(
    covariant GetIntSettingUseCaseProvider provider,
  ) {
    return call(
      provider.setting,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getIntSettingUseCaseProvider';
}

/// See also [getIntSettingUseCase].
class GetIntSettingUseCaseProvider
    extends AutoDisposeProvider<SettingsGetUseCase<int>> {
  /// See also [getIntSettingUseCase].
  GetIntSettingUseCaseProvider(
    this.setting,
  ) : super.internal(
          (ref) => getIntSettingUseCase(
            ref,
            setting,
          ),
          from: getIntSettingUseCaseProvider,
          name: r'getIntSettingUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getIntSettingUseCaseHash,
          dependencies: GetIntSettingUseCaseFamily._dependencies,
          allTransitiveDependencies:
              GetIntSettingUseCaseFamily._allTransitiveDependencies,
        );

  final AppSetting setting;

  @override
  bool operator ==(Object other) {
    return other is GetIntSettingUseCaseProvider && other.setting == setting;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, setting.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$setIntSettingUseCaseHash() =>
    r'2692682e655c55da9a1d54051aca6c539cef56bc';
typedef SetIntSettingUseCaseRef
    = AutoDisposeProviderRef<SettingsSetUseCase<int>>;

/// See also [setIntSettingUseCase].
@ProviderFor(setIntSettingUseCase)
const setIntSettingUseCaseProvider = SetIntSettingUseCaseFamily();

/// See also [setIntSettingUseCase].
class SetIntSettingUseCaseFamily extends Family<SettingsSetUseCase<int>> {
  /// See also [setIntSettingUseCase].
  const SetIntSettingUseCaseFamily();

  /// See also [setIntSettingUseCase].
  SetIntSettingUseCaseProvider call(
    AppSetting setting,
    int value,
  ) {
    return SetIntSettingUseCaseProvider(
      setting,
      value,
    );
  }

  @override
  SetIntSettingUseCaseProvider getProviderOverride(
    covariant SetIntSettingUseCaseProvider provider,
  ) {
    return call(
      provider.setting,
      provider.value,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'setIntSettingUseCaseProvider';
}

/// See also [setIntSettingUseCase].
class SetIntSettingUseCaseProvider
    extends AutoDisposeProvider<SettingsSetUseCase<int>> {
  /// See also [setIntSettingUseCase].
  SetIntSettingUseCaseProvider(
    this.setting,
    this.value,
  ) : super.internal(
          (ref) => setIntSettingUseCase(
            ref,
            setting,
            value,
          ),
          from: setIntSettingUseCaseProvider,
          name: r'setIntSettingUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$setIntSettingUseCaseHash,
          dependencies: SetIntSettingUseCaseFamily._dependencies,
          allTransitiveDependencies:
              SetIntSettingUseCaseFamily._allTransitiveDependencies,
        );

  final AppSetting setting;
  final int value;

  @override
  bool operator ==(Object other) {
    return other is SetIntSettingUseCaseProvider &&
        other.setting == setting &&
        other.value == value;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, setting.hashCode);
    hash = _SystemHash.combine(hash, value.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$getDoubleSettingUseCaseHash() =>
    r'f4c4412472b83f8b419f951488ae2d99fcea9ef4';
typedef GetDoubleSettingUseCaseRef
    = AutoDisposeProviderRef<SettingsGetUseCase<double>>;

/// See also [getDoubleSettingUseCase].
@ProviderFor(getDoubleSettingUseCase)
const getDoubleSettingUseCaseProvider = GetDoubleSettingUseCaseFamily();

/// See also [getDoubleSettingUseCase].
class GetDoubleSettingUseCaseFamily extends Family<SettingsGetUseCase<double>> {
  /// See also [getDoubleSettingUseCase].
  const GetDoubleSettingUseCaseFamily();

  /// See also [getDoubleSettingUseCase].
  GetDoubleSettingUseCaseProvider call(
    AppSetting setting,
  ) {
    return GetDoubleSettingUseCaseProvider(
      setting,
    );
  }

  @override
  GetDoubleSettingUseCaseProvider getProviderOverride(
    covariant GetDoubleSettingUseCaseProvider provider,
  ) {
    return call(
      provider.setting,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getDoubleSettingUseCaseProvider';
}

/// See also [getDoubleSettingUseCase].
class GetDoubleSettingUseCaseProvider
    extends AutoDisposeProvider<SettingsGetUseCase<double>> {
  /// See also [getDoubleSettingUseCase].
  GetDoubleSettingUseCaseProvider(
    this.setting,
  ) : super.internal(
          (ref) => getDoubleSettingUseCase(
            ref,
            setting,
          ),
          from: getDoubleSettingUseCaseProvider,
          name: r'getDoubleSettingUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getDoubleSettingUseCaseHash,
          dependencies: GetDoubleSettingUseCaseFamily._dependencies,
          allTransitiveDependencies:
              GetDoubleSettingUseCaseFamily._allTransitiveDependencies,
        );

  final AppSetting setting;

  @override
  bool operator ==(Object other) {
    return other is GetDoubleSettingUseCaseProvider && other.setting == setting;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, setting.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$setDoubleSettingUseCaseHash() =>
    r'68d5d82c9cb5fdc0b6677d3f7d3047c9b6dc6015';
typedef SetDoubleSettingUseCaseRef
    = AutoDisposeProviderRef<SettingsSetUseCase<double>>;

/// See also [setDoubleSettingUseCase].
@ProviderFor(setDoubleSettingUseCase)
const setDoubleSettingUseCaseProvider = SetDoubleSettingUseCaseFamily();

/// See also [setDoubleSettingUseCase].
class SetDoubleSettingUseCaseFamily extends Family<SettingsSetUseCase<double>> {
  /// See also [setDoubleSettingUseCase].
  const SetDoubleSettingUseCaseFamily();

  /// See also [setDoubleSettingUseCase].
  SetDoubleSettingUseCaseProvider call(
    AppSetting setting,
    double value,
  ) {
    return SetDoubleSettingUseCaseProvider(
      setting,
      value,
    );
  }

  @override
  SetDoubleSettingUseCaseProvider getProviderOverride(
    covariant SetDoubleSettingUseCaseProvider provider,
  ) {
    return call(
      provider.setting,
      provider.value,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'setDoubleSettingUseCaseProvider';
}

/// See also [setDoubleSettingUseCase].
class SetDoubleSettingUseCaseProvider
    extends AutoDisposeProvider<SettingsSetUseCase<double>> {
  /// See also [setDoubleSettingUseCase].
  SetDoubleSettingUseCaseProvider(
    this.setting,
    this.value,
  ) : super.internal(
          (ref) => setDoubleSettingUseCase(
            ref,
            setting,
            value,
          ),
          from: setDoubleSettingUseCaseProvider,
          name: r'setDoubleSettingUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$setDoubleSettingUseCaseHash,
          dependencies: SetDoubleSettingUseCaseFamily._dependencies,
          allTransitiveDependencies:
              SetDoubleSettingUseCaseFamily._allTransitiveDependencies,
        );

  final AppSetting setting;
  final double value;

  @override
  bool operator ==(Object other) {
    return other is SetDoubleSettingUseCaseProvider &&
        other.setting == setting &&
        other.value == value;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, setting.hashCode);
    hash = _SystemHash.combine(hash, value.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$getStringSettingUseCaseHash() =>
    r'd817812833a5ee59ac8cfe7f32f36dc7e043abec';
typedef GetStringSettingUseCaseRef
    = AutoDisposeProviderRef<SettingsGetUseCase<String>>;

/// See also [getStringSettingUseCase].
@ProviderFor(getStringSettingUseCase)
const getStringSettingUseCaseProvider = GetStringSettingUseCaseFamily();

/// See also [getStringSettingUseCase].
class GetStringSettingUseCaseFamily extends Family<SettingsGetUseCase<String>> {
  /// See also [getStringSettingUseCase].
  const GetStringSettingUseCaseFamily();

  /// See also [getStringSettingUseCase].
  GetStringSettingUseCaseProvider call(
    AppSetting setting,
  ) {
    return GetStringSettingUseCaseProvider(
      setting,
    );
  }

  @override
  GetStringSettingUseCaseProvider getProviderOverride(
    covariant GetStringSettingUseCaseProvider provider,
  ) {
    return call(
      provider.setting,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getStringSettingUseCaseProvider';
}

/// See also [getStringSettingUseCase].
class GetStringSettingUseCaseProvider
    extends AutoDisposeProvider<SettingsGetUseCase<String>> {
  /// See also [getStringSettingUseCase].
  GetStringSettingUseCaseProvider(
    this.setting,
  ) : super.internal(
          (ref) => getStringSettingUseCase(
            ref,
            setting,
          ),
          from: getStringSettingUseCaseProvider,
          name: r'getStringSettingUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getStringSettingUseCaseHash,
          dependencies: GetStringSettingUseCaseFamily._dependencies,
          allTransitiveDependencies:
              GetStringSettingUseCaseFamily._allTransitiveDependencies,
        );

  final AppSetting setting;

  @override
  bool operator ==(Object other) {
    return other is GetStringSettingUseCaseProvider && other.setting == setting;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, setting.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$setStringSettingUseCaseHash() =>
    r'dca274eb747302090d71e7931a4318e2632b31be';
typedef SetStringSettingUseCaseRef
    = AutoDisposeProviderRef<SettingsSetUseCase<String>>;

/// See also [setStringSettingUseCase].
@ProviderFor(setStringSettingUseCase)
const setStringSettingUseCaseProvider = SetStringSettingUseCaseFamily();

/// See also [setStringSettingUseCase].
class SetStringSettingUseCaseFamily extends Family<SettingsSetUseCase<String>> {
  /// See also [setStringSettingUseCase].
  const SetStringSettingUseCaseFamily();

  /// See also [setStringSettingUseCase].
  SetStringSettingUseCaseProvider call(
    AppSetting setting,
    String value,
  ) {
    return SetStringSettingUseCaseProvider(
      setting,
      value,
    );
  }

  @override
  SetStringSettingUseCaseProvider getProviderOverride(
    covariant SetStringSettingUseCaseProvider provider,
  ) {
    return call(
      provider.setting,
      provider.value,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'setStringSettingUseCaseProvider';
}

/// See also [setStringSettingUseCase].
class SetStringSettingUseCaseProvider
    extends AutoDisposeProvider<SettingsSetUseCase<String>> {
  /// See also [setStringSettingUseCase].
  SetStringSettingUseCaseProvider(
    this.setting,
    this.value,
  ) : super.internal(
          (ref) => setStringSettingUseCase(
            ref,
            setting,
            value,
          ),
          from: setStringSettingUseCaseProvider,
          name: r'setStringSettingUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$setStringSettingUseCaseHash,
          dependencies: SetStringSettingUseCaseFamily._dependencies,
          allTransitiveDependencies:
              SetStringSettingUseCaseFamily._allTransitiveDependencies,
        );

  final AppSetting setting;
  final String value;

  @override
  bool operator ==(Object other) {
    return other is SetStringSettingUseCaseProvider &&
        other.setting == setting &&
        other.value == value;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, setting.hashCode);
    hash = _SystemHash.combine(hash, value.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$getStringListSettingUseCaseHash() =>
    r'ddb3ea2c41287ae132ef69784eff39169a0d0a3a';
typedef GetStringListSettingUseCaseRef
    = AutoDisposeProviderRef<SettingsGetUseCase<List<String>>>;

/// See also [getStringListSettingUseCase].
@ProviderFor(getStringListSettingUseCase)
const getStringListSettingUseCaseProvider = GetStringListSettingUseCaseFamily();

/// See also [getStringListSettingUseCase].
class GetStringListSettingUseCaseFamily
    extends Family<SettingsGetUseCase<List<String>>> {
  /// See also [getStringListSettingUseCase].
  const GetStringListSettingUseCaseFamily();

  /// See also [getStringListSettingUseCase].
  GetStringListSettingUseCaseProvider call(
    AppSetting setting,
  ) {
    return GetStringListSettingUseCaseProvider(
      setting,
    );
  }

  @override
  GetStringListSettingUseCaseProvider getProviderOverride(
    covariant GetStringListSettingUseCaseProvider provider,
  ) {
    return call(
      provider.setting,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getStringListSettingUseCaseProvider';
}

/// See also [getStringListSettingUseCase].
class GetStringListSettingUseCaseProvider
    extends AutoDisposeProvider<SettingsGetUseCase<List<String>>> {
  /// See also [getStringListSettingUseCase].
  GetStringListSettingUseCaseProvider(
    this.setting,
  ) : super.internal(
          (ref) => getStringListSettingUseCase(
            ref,
            setting,
          ),
          from: getStringListSettingUseCaseProvider,
          name: r'getStringListSettingUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getStringListSettingUseCaseHash,
          dependencies: GetStringListSettingUseCaseFamily._dependencies,
          allTransitiveDependencies:
              GetStringListSettingUseCaseFamily._allTransitiveDependencies,
        );

  final AppSetting setting;

  @override
  bool operator ==(Object other) {
    return other is GetStringListSettingUseCaseProvider &&
        other.setting == setting;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, setting.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$setStringListSettingUseCaseHash() =>
    r'2828180877a23feecf8fc3c10b5078bb18fe4847';
typedef SetStringListSettingUseCaseRef
    = AutoDisposeProviderRef<SettingsSetUseCase<List<String>>>;

/// See also [setStringListSettingUseCase].
@ProviderFor(setStringListSettingUseCase)
const setStringListSettingUseCaseProvider = SetStringListSettingUseCaseFamily();

/// See also [setStringListSettingUseCase].
class SetStringListSettingUseCaseFamily
    extends Family<SettingsSetUseCase<List<String>>> {
  /// See also [setStringListSettingUseCase].
  const SetStringListSettingUseCaseFamily();

  /// See also [setStringListSettingUseCase].
  SetStringListSettingUseCaseProvider call(
    AppSetting setting,
    List<String> value,
  ) {
    return SetStringListSettingUseCaseProvider(
      setting,
      value,
    );
  }

  @override
  SetStringListSettingUseCaseProvider getProviderOverride(
    covariant SetStringListSettingUseCaseProvider provider,
  ) {
    return call(
      provider.setting,
      provider.value,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'setStringListSettingUseCaseProvider';
}

/// See also [setStringListSettingUseCase].
class SetStringListSettingUseCaseProvider
    extends AutoDisposeProvider<SettingsSetUseCase<List<String>>> {
  /// See also [setStringListSettingUseCase].
  SetStringListSettingUseCaseProvider(
    this.setting,
    this.value,
  ) : super.internal(
          (ref) => setStringListSettingUseCase(
            ref,
            setting,
            value,
          ),
          from: setStringListSettingUseCaseProvider,
          name: r'setStringListSettingUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$setStringListSettingUseCaseHash,
          dependencies: SetStringListSettingUseCaseFamily._dependencies,
          allTransitiveDependencies:
              SetStringListSettingUseCaseFamily._allTransitiveDependencies,
        );

  final AppSetting setting;
  final List<String> value;

  @override
  bool operator ==(Object other) {
    return other is SetStringListSettingUseCaseProvider &&
        other.setting == setting &&
        other.value == value;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, setting.hashCode);
    hash = _SystemHash.combine(hash, value.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
