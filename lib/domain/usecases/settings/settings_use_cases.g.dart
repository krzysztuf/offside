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
    AppSetting setting,
  ) : this._internal(
          (ref) => getBoolSettingUseCase(
            ref as GetBoolSettingUseCaseRef,
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
          setting: setting,
        );

  GetBoolSettingUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.setting,
  }) : super.internal();

  final AppSetting setting;

  @override
  Override overrideWith(
    SettingsGetUseCase<bool> Function(GetBoolSettingUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetBoolSettingUseCaseProvider._internal(
        (ref) => create(ref as GetBoolSettingUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        setting: setting,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<SettingsGetUseCase<bool>> createElement() {
    return _GetBoolSettingUseCaseProviderElement(this);
  }

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

mixin GetBoolSettingUseCaseRef
    on AutoDisposeProviderRef<SettingsGetUseCase<bool>> {
  /// The parameter `setting` of this provider.
  AppSetting get setting;
}

class _GetBoolSettingUseCaseProviderElement
    extends AutoDisposeProviderElement<SettingsGetUseCase<bool>>
    with GetBoolSettingUseCaseRef {
  _GetBoolSettingUseCaseProviderElement(super.provider);

  @override
  AppSetting get setting => (origin as GetBoolSettingUseCaseProvider).setting;
}

String _$setBoolSettingUseCaseHash() =>
    r'b31fe7b0ae847f5b157bfa4cac5d70b5be3daae8';

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
    AppSetting setting,
    bool value,
  ) : this._internal(
          (ref) => setBoolSettingUseCase(
            ref as SetBoolSettingUseCaseRef,
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
          setting: setting,
          value: value,
        );

  SetBoolSettingUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.setting,
    required this.value,
  }) : super.internal();

  final AppSetting setting;
  final bool value;

  @override
  Override overrideWith(
    SettingsSetUseCase<bool> Function(SetBoolSettingUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SetBoolSettingUseCaseProvider._internal(
        (ref) => create(ref as SetBoolSettingUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        setting: setting,
        value: value,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<SettingsSetUseCase<bool>> createElement() {
    return _SetBoolSettingUseCaseProviderElement(this);
  }

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

mixin SetBoolSettingUseCaseRef
    on AutoDisposeProviderRef<SettingsSetUseCase<bool>> {
  /// The parameter `setting` of this provider.
  AppSetting get setting;

  /// The parameter `value` of this provider.
  bool get value;
}

class _SetBoolSettingUseCaseProviderElement
    extends AutoDisposeProviderElement<SettingsSetUseCase<bool>>
    with SetBoolSettingUseCaseRef {
  _SetBoolSettingUseCaseProviderElement(super.provider);

  @override
  AppSetting get setting => (origin as SetBoolSettingUseCaseProvider).setting;
  @override
  bool get value => (origin as SetBoolSettingUseCaseProvider).value;
}

String _$getIntSettingUseCaseHash() =>
    r'4ce13a6f8cdee03e87adf9b03fedac6ca5a7e0c2';

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
    AppSetting setting,
  ) : this._internal(
          (ref) => getIntSettingUseCase(
            ref as GetIntSettingUseCaseRef,
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
          setting: setting,
        );

  GetIntSettingUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.setting,
  }) : super.internal();

  final AppSetting setting;

  @override
  Override overrideWith(
    SettingsGetUseCase<int> Function(GetIntSettingUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetIntSettingUseCaseProvider._internal(
        (ref) => create(ref as GetIntSettingUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        setting: setting,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<SettingsGetUseCase<int>> createElement() {
    return _GetIntSettingUseCaseProviderElement(this);
  }

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

mixin GetIntSettingUseCaseRef
    on AutoDisposeProviderRef<SettingsGetUseCase<int>> {
  /// The parameter `setting` of this provider.
  AppSetting get setting;
}

class _GetIntSettingUseCaseProviderElement
    extends AutoDisposeProviderElement<SettingsGetUseCase<int>>
    with GetIntSettingUseCaseRef {
  _GetIntSettingUseCaseProviderElement(super.provider);

  @override
  AppSetting get setting => (origin as GetIntSettingUseCaseProvider).setting;
}

String _$setIntSettingUseCaseHash() =>
    r'2692682e655c55da9a1d54051aca6c539cef56bc';

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
    AppSetting setting,
    int value,
  ) : this._internal(
          (ref) => setIntSettingUseCase(
            ref as SetIntSettingUseCaseRef,
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
          setting: setting,
          value: value,
        );

  SetIntSettingUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.setting,
    required this.value,
  }) : super.internal();

  final AppSetting setting;
  final int value;

  @override
  Override overrideWith(
    SettingsSetUseCase<int> Function(SetIntSettingUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SetIntSettingUseCaseProvider._internal(
        (ref) => create(ref as SetIntSettingUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        setting: setting,
        value: value,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<SettingsSetUseCase<int>> createElement() {
    return _SetIntSettingUseCaseProviderElement(this);
  }

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

mixin SetIntSettingUseCaseRef
    on AutoDisposeProviderRef<SettingsSetUseCase<int>> {
  /// The parameter `setting` of this provider.
  AppSetting get setting;

  /// The parameter `value` of this provider.
  int get value;
}

class _SetIntSettingUseCaseProviderElement
    extends AutoDisposeProviderElement<SettingsSetUseCase<int>>
    with SetIntSettingUseCaseRef {
  _SetIntSettingUseCaseProviderElement(super.provider);

  @override
  AppSetting get setting => (origin as SetIntSettingUseCaseProvider).setting;
  @override
  int get value => (origin as SetIntSettingUseCaseProvider).value;
}

String _$getDoubleSettingUseCaseHash() =>
    r'f4c4412472b83f8b419f951488ae2d99fcea9ef4';

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
    AppSetting setting,
  ) : this._internal(
          (ref) => getDoubleSettingUseCase(
            ref as GetDoubleSettingUseCaseRef,
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
          setting: setting,
        );

  GetDoubleSettingUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.setting,
  }) : super.internal();

  final AppSetting setting;

  @override
  Override overrideWith(
    SettingsGetUseCase<double> Function(GetDoubleSettingUseCaseRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetDoubleSettingUseCaseProvider._internal(
        (ref) => create(ref as GetDoubleSettingUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        setting: setting,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<SettingsGetUseCase<double>> createElement() {
    return _GetDoubleSettingUseCaseProviderElement(this);
  }

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

mixin GetDoubleSettingUseCaseRef
    on AutoDisposeProviderRef<SettingsGetUseCase<double>> {
  /// The parameter `setting` of this provider.
  AppSetting get setting;
}

class _GetDoubleSettingUseCaseProviderElement
    extends AutoDisposeProviderElement<SettingsGetUseCase<double>>
    with GetDoubleSettingUseCaseRef {
  _GetDoubleSettingUseCaseProviderElement(super.provider);

  @override
  AppSetting get setting => (origin as GetDoubleSettingUseCaseProvider).setting;
}

String _$setDoubleSettingUseCaseHash() =>
    r'68d5d82c9cb5fdc0b6677d3f7d3047c9b6dc6015';

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
    AppSetting setting,
    double value,
  ) : this._internal(
          (ref) => setDoubleSettingUseCase(
            ref as SetDoubleSettingUseCaseRef,
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
          setting: setting,
          value: value,
        );

  SetDoubleSettingUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.setting,
    required this.value,
  }) : super.internal();

  final AppSetting setting;
  final double value;

  @override
  Override overrideWith(
    SettingsSetUseCase<double> Function(SetDoubleSettingUseCaseRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SetDoubleSettingUseCaseProvider._internal(
        (ref) => create(ref as SetDoubleSettingUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        setting: setting,
        value: value,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<SettingsSetUseCase<double>> createElement() {
    return _SetDoubleSettingUseCaseProviderElement(this);
  }

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

mixin SetDoubleSettingUseCaseRef
    on AutoDisposeProviderRef<SettingsSetUseCase<double>> {
  /// The parameter `setting` of this provider.
  AppSetting get setting;

  /// The parameter `value` of this provider.
  double get value;
}

class _SetDoubleSettingUseCaseProviderElement
    extends AutoDisposeProviderElement<SettingsSetUseCase<double>>
    with SetDoubleSettingUseCaseRef {
  _SetDoubleSettingUseCaseProviderElement(super.provider);

  @override
  AppSetting get setting => (origin as SetDoubleSettingUseCaseProvider).setting;
  @override
  double get value => (origin as SetDoubleSettingUseCaseProvider).value;
}

String _$getStringSettingUseCaseHash() =>
    r'd817812833a5ee59ac8cfe7f32f36dc7e043abec';

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
    AppSetting setting,
  ) : this._internal(
          (ref) => getStringSettingUseCase(
            ref as GetStringSettingUseCaseRef,
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
          setting: setting,
        );

  GetStringSettingUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.setting,
  }) : super.internal();

  final AppSetting setting;

  @override
  Override overrideWith(
    SettingsGetUseCase<String> Function(GetStringSettingUseCaseRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetStringSettingUseCaseProvider._internal(
        (ref) => create(ref as GetStringSettingUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        setting: setting,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<SettingsGetUseCase<String>> createElement() {
    return _GetStringSettingUseCaseProviderElement(this);
  }

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

mixin GetStringSettingUseCaseRef
    on AutoDisposeProviderRef<SettingsGetUseCase<String>> {
  /// The parameter `setting` of this provider.
  AppSetting get setting;
}

class _GetStringSettingUseCaseProviderElement
    extends AutoDisposeProviderElement<SettingsGetUseCase<String>>
    with GetStringSettingUseCaseRef {
  _GetStringSettingUseCaseProviderElement(super.provider);

  @override
  AppSetting get setting => (origin as GetStringSettingUseCaseProvider).setting;
}

String _$setStringSettingUseCaseHash() =>
    r'dca274eb747302090d71e7931a4318e2632b31be';

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
    AppSetting setting,
    String value,
  ) : this._internal(
          (ref) => setStringSettingUseCase(
            ref as SetStringSettingUseCaseRef,
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
          setting: setting,
          value: value,
        );

  SetStringSettingUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.setting,
    required this.value,
  }) : super.internal();

  final AppSetting setting;
  final String value;

  @override
  Override overrideWith(
    SettingsSetUseCase<String> Function(SetStringSettingUseCaseRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SetStringSettingUseCaseProvider._internal(
        (ref) => create(ref as SetStringSettingUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        setting: setting,
        value: value,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<SettingsSetUseCase<String>> createElement() {
    return _SetStringSettingUseCaseProviderElement(this);
  }

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

mixin SetStringSettingUseCaseRef
    on AutoDisposeProviderRef<SettingsSetUseCase<String>> {
  /// The parameter `setting` of this provider.
  AppSetting get setting;

  /// The parameter `value` of this provider.
  String get value;
}

class _SetStringSettingUseCaseProviderElement
    extends AutoDisposeProviderElement<SettingsSetUseCase<String>>
    with SetStringSettingUseCaseRef {
  _SetStringSettingUseCaseProviderElement(super.provider);

  @override
  AppSetting get setting => (origin as SetStringSettingUseCaseProvider).setting;
  @override
  String get value => (origin as SetStringSettingUseCaseProvider).value;
}

String _$getStringListSettingUseCaseHash() =>
    r'ddb3ea2c41287ae132ef69784eff39169a0d0a3a';

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
    AppSetting setting,
  ) : this._internal(
          (ref) => getStringListSettingUseCase(
            ref as GetStringListSettingUseCaseRef,
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
          setting: setting,
        );

  GetStringListSettingUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.setting,
  }) : super.internal();

  final AppSetting setting;

  @override
  Override overrideWith(
    SettingsGetUseCase<List<String>> Function(
            GetStringListSettingUseCaseRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetStringListSettingUseCaseProvider._internal(
        (ref) => create(ref as GetStringListSettingUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        setting: setting,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<SettingsGetUseCase<List<String>>> createElement() {
    return _GetStringListSettingUseCaseProviderElement(this);
  }

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

mixin GetStringListSettingUseCaseRef
    on AutoDisposeProviderRef<SettingsGetUseCase<List<String>>> {
  /// The parameter `setting` of this provider.
  AppSetting get setting;
}

class _GetStringListSettingUseCaseProviderElement
    extends AutoDisposeProviderElement<SettingsGetUseCase<List<String>>>
    with GetStringListSettingUseCaseRef {
  _GetStringListSettingUseCaseProviderElement(super.provider);

  @override
  AppSetting get setting =>
      (origin as GetStringListSettingUseCaseProvider).setting;
}

String _$setStringListSettingUseCaseHash() =>
    r'2828180877a23feecf8fc3c10b5078bb18fe4847';

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
    AppSetting setting,
    List<String> value,
  ) : this._internal(
          (ref) => setStringListSettingUseCase(
            ref as SetStringListSettingUseCaseRef,
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
          setting: setting,
          value: value,
        );

  SetStringListSettingUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.setting,
    required this.value,
  }) : super.internal();

  final AppSetting setting;
  final List<String> value;

  @override
  Override overrideWith(
    SettingsSetUseCase<List<String>> Function(
            SetStringListSettingUseCaseRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SetStringListSettingUseCaseProvider._internal(
        (ref) => create(ref as SetStringListSettingUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        setting: setting,
        value: value,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<SettingsSetUseCase<List<String>>> createElement() {
    return _SetStringListSettingUseCaseProviderElement(this);
  }

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

mixin SetStringListSettingUseCaseRef
    on AutoDisposeProviderRef<SettingsSetUseCase<List<String>>> {
  /// The parameter `setting` of this provider.
  AppSetting get setting;

  /// The parameter `value` of this provider.
  List<String> get value;
}

class _SetStringListSettingUseCaseProviderElement
    extends AutoDisposeProviderElement<SettingsSetUseCase<List<String>>>
    with SetStringListSettingUseCaseRef {
  _SetStringListSettingUseCaseProviderElement(super.provider);

  @override
  AppSetting get setting =>
      (origin as SetStringListSettingUseCaseProvider).setting;
  @override
  List<String> get value =>
      (origin as SetStringListSettingUseCaseProvider).value;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
