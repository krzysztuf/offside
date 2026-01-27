// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_use_cases.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getBoolSettingUseCase)
final getBoolSettingUseCaseProvider = GetBoolSettingUseCaseFamily._();

final class GetBoolSettingUseCaseProvider
    extends
        $FunctionalProvider<
          SettingsGetUseCase<bool>,
          SettingsGetUseCase<bool>,
          SettingsGetUseCase<bool>
        >
    with $Provider<SettingsGetUseCase<bool>> {
  GetBoolSettingUseCaseProvider._({
    required GetBoolSettingUseCaseFamily super.from,
    required AppSetting super.argument,
  }) : super(
         retry: null,
         name: r'getBoolSettingUseCaseProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getBoolSettingUseCaseHash();

  @override
  String toString() {
    return r'getBoolSettingUseCaseProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<SettingsGetUseCase<bool>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SettingsGetUseCase<bool> create(Ref ref) {
    final argument = this.argument as AppSetting;
    return getBoolSettingUseCase(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SettingsGetUseCase<bool> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SettingsGetUseCase<bool>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GetBoolSettingUseCaseProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getBoolSettingUseCaseHash() =>
    r'8633a59846c68c8b8dfe93421a6a158a546ec699';

final class GetBoolSettingUseCaseFamily extends $Family
    with $FunctionalFamilyOverride<SettingsGetUseCase<bool>, AppSetting> {
  GetBoolSettingUseCaseFamily._()
    : super(
        retry: null,
        name: r'getBoolSettingUseCaseProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetBoolSettingUseCaseProvider call(AppSetting setting) =>
      GetBoolSettingUseCaseProvider._(argument: setting, from: this);

  @override
  String toString() => r'getBoolSettingUseCaseProvider';
}

@ProviderFor(setBoolSettingUseCase)
final setBoolSettingUseCaseProvider = SetBoolSettingUseCaseFamily._();

final class SetBoolSettingUseCaseProvider
    extends
        $FunctionalProvider<
          SettingsSetUseCase<bool>,
          SettingsSetUseCase<bool>,
          SettingsSetUseCase<bool>
        >
    with $Provider<SettingsSetUseCase<bool>> {
  SetBoolSettingUseCaseProvider._({
    required SetBoolSettingUseCaseFamily super.from,
    required (AppSetting, bool) super.argument,
  }) : super(
         retry: null,
         name: r'setBoolSettingUseCaseProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$setBoolSettingUseCaseHash();

  @override
  String toString() {
    return r'setBoolSettingUseCaseProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<SettingsSetUseCase<bool>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SettingsSetUseCase<bool> create(Ref ref) {
    final argument = this.argument as (AppSetting, bool);
    return setBoolSettingUseCase(ref, argument.$1, argument.$2);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SettingsSetUseCase<bool> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SettingsSetUseCase<bool>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SetBoolSettingUseCaseProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$setBoolSettingUseCaseHash() =>
    r'a11b40d673e2b0381b904de845076c3c9fd1b4d9';

final class SetBoolSettingUseCaseFamily extends $Family
    with
        $FunctionalFamilyOverride<
          SettingsSetUseCase<bool>,
          (AppSetting, bool)
        > {
  SetBoolSettingUseCaseFamily._()
    : super(
        retry: null,
        name: r'setBoolSettingUseCaseProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SetBoolSettingUseCaseProvider call(AppSetting setting, bool value) =>
      SetBoolSettingUseCaseProvider._(argument: (setting, value), from: this);

  @override
  String toString() => r'setBoolSettingUseCaseProvider';
}

@ProviderFor(getIntSettingUseCase)
final getIntSettingUseCaseProvider = GetIntSettingUseCaseFamily._();

final class GetIntSettingUseCaseProvider
    extends
        $FunctionalProvider<
          SettingsGetUseCase<int>,
          SettingsGetUseCase<int>,
          SettingsGetUseCase<int>
        >
    with $Provider<SettingsGetUseCase<int>> {
  GetIntSettingUseCaseProvider._({
    required GetIntSettingUseCaseFamily super.from,
    required AppSetting super.argument,
  }) : super(
         retry: null,
         name: r'getIntSettingUseCaseProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getIntSettingUseCaseHash();

  @override
  String toString() {
    return r'getIntSettingUseCaseProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<SettingsGetUseCase<int>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SettingsGetUseCase<int> create(Ref ref) {
    final argument = this.argument as AppSetting;
    return getIntSettingUseCase(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SettingsGetUseCase<int> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SettingsGetUseCase<int>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GetIntSettingUseCaseProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getIntSettingUseCaseHash() =>
    r'a9ee27bef638038debda46db8d7267e188a07263';

final class GetIntSettingUseCaseFamily extends $Family
    with $FunctionalFamilyOverride<SettingsGetUseCase<int>, AppSetting> {
  GetIntSettingUseCaseFamily._()
    : super(
        retry: null,
        name: r'getIntSettingUseCaseProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetIntSettingUseCaseProvider call(AppSetting setting) =>
      GetIntSettingUseCaseProvider._(argument: setting, from: this);

  @override
  String toString() => r'getIntSettingUseCaseProvider';
}

@ProviderFor(setIntSettingUseCase)
final setIntSettingUseCaseProvider = SetIntSettingUseCaseFamily._();

final class SetIntSettingUseCaseProvider
    extends
        $FunctionalProvider<
          SettingsSetUseCase<int>,
          SettingsSetUseCase<int>,
          SettingsSetUseCase<int>
        >
    with $Provider<SettingsSetUseCase<int>> {
  SetIntSettingUseCaseProvider._({
    required SetIntSettingUseCaseFamily super.from,
    required (AppSetting, int) super.argument,
  }) : super(
         retry: null,
         name: r'setIntSettingUseCaseProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$setIntSettingUseCaseHash();

  @override
  String toString() {
    return r'setIntSettingUseCaseProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<SettingsSetUseCase<int>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SettingsSetUseCase<int> create(Ref ref) {
    final argument = this.argument as (AppSetting, int);
    return setIntSettingUseCase(ref, argument.$1, argument.$2);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SettingsSetUseCase<int> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SettingsSetUseCase<int>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SetIntSettingUseCaseProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$setIntSettingUseCaseHash() =>
    r'00d57345fee69a621165ab5bdcc8f265eeeec145';

final class SetIntSettingUseCaseFamily extends $Family
    with $FunctionalFamilyOverride<SettingsSetUseCase<int>, (AppSetting, int)> {
  SetIntSettingUseCaseFamily._()
    : super(
        retry: null,
        name: r'setIntSettingUseCaseProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SetIntSettingUseCaseProvider call(AppSetting setting, int value) =>
      SetIntSettingUseCaseProvider._(argument: (setting, value), from: this);

  @override
  String toString() => r'setIntSettingUseCaseProvider';
}

@ProviderFor(getDoubleSettingUseCase)
final getDoubleSettingUseCaseProvider = GetDoubleSettingUseCaseFamily._();

final class GetDoubleSettingUseCaseProvider
    extends
        $FunctionalProvider<
          SettingsGetUseCase<double>,
          SettingsGetUseCase<double>,
          SettingsGetUseCase<double>
        >
    with $Provider<SettingsGetUseCase<double>> {
  GetDoubleSettingUseCaseProvider._({
    required GetDoubleSettingUseCaseFamily super.from,
    required AppSetting super.argument,
  }) : super(
         retry: null,
         name: r'getDoubleSettingUseCaseProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getDoubleSettingUseCaseHash();

  @override
  String toString() {
    return r'getDoubleSettingUseCaseProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<SettingsGetUseCase<double>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SettingsGetUseCase<double> create(Ref ref) {
    final argument = this.argument as AppSetting;
    return getDoubleSettingUseCase(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SettingsGetUseCase<double> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SettingsGetUseCase<double>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GetDoubleSettingUseCaseProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getDoubleSettingUseCaseHash() =>
    r'55d4e8237d86e27fc04ed6c76154d648d0c38b3b';

final class GetDoubleSettingUseCaseFamily extends $Family
    with $FunctionalFamilyOverride<SettingsGetUseCase<double>, AppSetting> {
  GetDoubleSettingUseCaseFamily._()
    : super(
        retry: null,
        name: r'getDoubleSettingUseCaseProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetDoubleSettingUseCaseProvider call(AppSetting setting) =>
      GetDoubleSettingUseCaseProvider._(argument: setting, from: this);

  @override
  String toString() => r'getDoubleSettingUseCaseProvider';
}

@ProviderFor(setDoubleSettingUseCase)
final setDoubleSettingUseCaseProvider = SetDoubleSettingUseCaseFamily._();

final class SetDoubleSettingUseCaseProvider
    extends
        $FunctionalProvider<
          SettingsSetUseCase<double>,
          SettingsSetUseCase<double>,
          SettingsSetUseCase<double>
        >
    with $Provider<SettingsSetUseCase<double>> {
  SetDoubleSettingUseCaseProvider._({
    required SetDoubleSettingUseCaseFamily super.from,
    required (AppSetting, double) super.argument,
  }) : super(
         retry: null,
         name: r'setDoubleSettingUseCaseProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$setDoubleSettingUseCaseHash();

  @override
  String toString() {
    return r'setDoubleSettingUseCaseProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<SettingsSetUseCase<double>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SettingsSetUseCase<double> create(Ref ref) {
    final argument = this.argument as (AppSetting, double);
    return setDoubleSettingUseCase(ref, argument.$1, argument.$2);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SettingsSetUseCase<double> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SettingsSetUseCase<double>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SetDoubleSettingUseCaseProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$setDoubleSettingUseCaseHash() =>
    r'6bc0585f9cdab4dbebcdc9bd8a4b32229b5b6192';

final class SetDoubleSettingUseCaseFamily extends $Family
    with
        $FunctionalFamilyOverride<
          SettingsSetUseCase<double>,
          (AppSetting, double)
        > {
  SetDoubleSettingUseCaseFamily._()
    : super(
        retry: null,
        name: r'setDoubleSettingUseCaseProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SetDoubleSettingUseCaseProvider call(AppSetting setting, double value) =>
      SetDoubleSettingUseCaseProvider._(argument: (setting, value), from: this);

  @override
  String toString() => r'setDoubleSettingUseCaseProvider';
}

@ProviderFor(getStringSettingUseCase)
final getStringSettingUseCaseProvider = GetStringSettingUseCaseFamily._();

final class GetStringSettingUseCaseProvider
    extends
        $FunctionalProvider<
          SettingsGetUseCase<String>,
          SettingsGetUseCase<String>,
          SettingsGetUseCase<String>
        >
    with $Provider<SettingsGetUseCase<String>> {
  GetStringSettingUseCaseProvider._({
    required GetStringSettingUseCaseFamily super.from,
    required AppSetting super.argument,
  }) : super(
         retry: null,
         name: r'getStringSettingUseCaseProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getStringSettingUseCaseHash();

  @override
  String toString() {
    return r'getStringSettingUseCaseProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<SettingsGetUseCase<String>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SettingsGetUseCase<String> create(Ref ref) {
    final argument = this.argument as AppSetting;
    return getStringSettingUseCase(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SettingsGetUseCase<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SettingsGetUseCase<String>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GetStringSettingUseCaseProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getStringSettingUseCaseHash() =>
    r'3a1d7da5c97560a4f8d7ca7f9384ca37ed9f2331';

final class GetStringSettingUseCaseFamily extends $Family
    with $FunctionalFamilyOverride<SettingsGetUseCase<String>, AppSetting> {
  GetStringSettingUseCaseFamily._()
    : super(
        retry: null,
        name: r'getStringSettingUseCaseProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetStringSettingUseCaseProvider call(AppSetting setting) =>
      GetStringSettingUseCaseProvider._(argument: setting, from: this);

  @override
  String toString() => r'getStringSettingUseCaseProvider';
}

@ProviderFor(setStringSettingUseCase)
final setStringSettingUseCaseProvider = SetStringSettingUseCaseFamily._();

final class SetStringSettingUseCaseProvider
    extends
        $FunctionalProvider<
          SettingsSetUseCase<String>,
          SettingsSetUseCase<String>,
          SettingsSetUseCase<String>
        >
    with $Provider<SettingsSetUseCase<String>> {
  SetStringSettingUseCaseProvider._({
    required SetStringSettingUseCaseFamily super.from,
    required (AppSetting, String) super.argument,
  }) : super(
         retry: null,
         name: r'setStringSettingUseCaseProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$setStringSettingUseCaseHash();

  @override
  String toString() {
    return r'setStringSettingUseCaseProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<SettingsSetUseCase<String>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SettingsSetUseCase<String> create(Ref ref) {
    final argument = this.argument as (AppSetting, String);
    return setStringSettingUseCase(ref, argument.$1, argument.$2);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SettingsSetUseCase<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SettingsSetUseCase<String>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SetStringSettingUseCaseProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$setStringSettingUseCaseHash() =>
    r'7548fa9f78deb7273a58fa95de3c5acd3f90e543';

final class SetStringSettingUseCaseFamily extends $Family
    with
        $FunctionalFamilyOverride<
          SettingsSetUseCase<String>,
          (AppSetting, String)
        > {
  SetStringSettingUseCaseFamily._()
    : super(
        retry: null,
        name: r'setStringSettingUseCaseProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SetStringSettingUseCaseProvider call(AppSetting setting, String value) =>
      SetStringSettingUseCaseProvider._(argument: (setting, value), from: this);

  @override
  String toString() => r'setStringSettingUseCaseProvider';
}

@ProviderFor(getStringListSettingUseCase)
final getStringListSettingUseCaseProvider =
    GetStringListSettingUseCaseFamily._();

final class GetStringListSettingUseCaseProvider
    extends
        $FunctionalProvider<
          SettingsGetUseCase<List<String>>,
          SettingsGetUseCase<List<String>>,
          SettingsGetUseCase<List<String>>
        >
    with $Provider<SettingsGetUseCase<List<String>>> {
  GetStringListSettingUseCaseProvider._({
    required GetStringListSettingUseCaseFamily super.from,
    required AppSetting super.argument,
  }) : super(
         retry: null,
         name: r'getStringListSettingUseCaseProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getStringListSettingUseCaseHash();

  @override
  String toString() {
    return r'getStringListSettingUseCaseProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<SettingsGetUseCase<List<String>>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SettingsGetUseCase<List<String>> create(Ref ref) {
    final argument = this.argument as AppSetting;
    return getStringListSettingUseCase(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SettingsGetUseCase<List<String>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SettingsGetUseCase<List<String>>>(
        value,
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GetStringListSettingUseCaseProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getStringListSettingUseCaseHash() =>
    r'75970cc11411022bbdf1c39cf1f7c76b7a1f514f';

final class GetStringListSettingUseCaseFamily extends $Family
    with
        $FunctionalFamilyOverride<
          SettingsGetUseCase<List<String>>,
          AppSetting
        > {
  GetStringListSettingUseCaseFamily._()
    : super(
        retry: null,
        name: r'getStringListSettingUseCaseProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetStringListSettingUseCaseProvider call(AppSetting setting) =>
      GetStringListSettingUseCaseProvider._(argument: setting, from: this);

  @override
  String toString() => r'getStringListSettingUseCaseProvider';
}

@ProviderFor(setStringListSettingUseCase)
final setStringListSettingUseCaseProvider =
    SetStringListSettingUseCaseFamily._();

final class SetStringListSettingUseCaseProvider
    extends
        $FunctionalProvider<
          SettingsSetUseCase<List<String>>,
          SettingsSetUseCase<List<String>>,
          SettingsSetUseCase<List<String>>
        >
    with $Provider<SettingsSetUseCase<List<String>>> {
  SetStringListSettingUseCaseProvider._({
    required SetStringListSettingUseCaseFamily super.from,
    required (AppSetting, List<String>) super.argument,
  }) : super(
         retry: null,
         name: r'setStringListSettingUseCaseProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$setStringListSettingUseCaseHash();

  @override
  String toString() {
    return r'setStringListSettingUseCaseProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<SettingsSetUseCase<List<String>>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SettingsSetUseCase<List<String>> create(Ref ref) {
    final argument = this.argument as (AppSetting, List<String>);
    return setStringListSettingUseCase(ref, argument.$1, argument.$2);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SettingsSetUseCase<List<String>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SettingsSetUseCase<List<String>>>(
        value,
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SetStringListSettingUseCaseProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$setStringListSettingUseCaseHash() =>
    r'bf210483c224d2e90c93bf7bdae6ecf0d9d3dab2';

final class SetStringListSettingUseCaseFamily extends $Family
    with
        $FunctionalFamilyOverride<
          SettingsSetUseCase<List<String>>,
          (AppSetting, List<String>)
        > {
  SetStringListSettingUseCaseFamily._()
    : super(
        retry: null,
        name: r'setStringListSettingUseCaseProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SetStringListSettingUseCaseProvider call(
    AppSetting setting,
    List<String> value,
  ) => SetStringListSettingUseCaseProvider._(
    argument: (setting, value),
    from: this,
  );

  @override
  String toString() => r'setStringListSettingUseCaseProvider';
}
