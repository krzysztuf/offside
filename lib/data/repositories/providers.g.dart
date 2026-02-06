// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dio)
final dioProvider = DioProvider._();

final class DioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  DioProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return dio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$dioHash() => r'fe8960d513b40b38c3d2d1c5e5d493532cf85cfe';

@ProviderFor(offsideApi)
final offsideApiProvider = OffsideApiProvider._();

final class OffsideApiProvider
    extends $FunctionalProvider<OffsideApi, OffsideApi, OffsideApi>
    with $Provider<OffsideApi> {
  OffsideApiProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'offsideApiProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$offsideApiHash();

  @$internal
  @override
  $ProviderElement<OffsideApi> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  OffsideApi create(Ref ref) {
    return offsideApi(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OffsideApi value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OffsideApi>(value),
    );
  }
}

String _$offsideApiHash() => r'fbe56adb66b3db1be4ee8872533e4bd662affe5d';

@ProviderFor(matchesRepository)
final matchesRepositoryProvider = MatchesRepositoryProvider._();

final class MatchesRepositoryProvider
    extends
        $FunctionalProvider<
          Repository<Match>,
          Repository<Match>,
          Repository<Match>
        >
    with $Provider<Repository<Match>> {
  MatchesRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'matchesRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$matchesRepositoryHash();

  @$internal
  @override
  $ProviderElement<Repository<Match>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  Repository<Match> create(Ref ref) {
    return matchesRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Repository<Match> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Repository<Match>>(value),
    );
  }
}

String _$matchesRepositoryHash() => r'1abfcd0763e88a2594d2b57babd3b7d32ce884a0';

@ProviderFor(betsRepository)
final betsRepositoryProvider = BetsRepositoryProvider._();

final class BetsRepositoryProvider
    extends
        $FunctionalProvider<Repository<Bet>, Repository<Bet>, Repository<Bet>>
    with $Provider<Repository<Bet>> {
  BetsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'betsRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$betsRepositoryHash();

  @$internal
  @override
  $ProviderElement<Repository<Bet>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Repository<Bet> create(Ref ref) {
    return betsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Repository<Bet> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Repository<Bet>>(value),
    );
  }
}

String _$betsRepositoryHash() => r'47ec7a0144a27c8b75497b0c5855e6ae7cae6509';

@ProviderFor(matchBetsRepository)
final matchBetsRepositoryProvider = MatchBetsRepositoryFamily._();

final class MatchBetsRepositoryProvider
    extends
        $FunctionalProvider<Repository<Bet>, Repository<Bet>, Repository<Bet>>
    with $Provider<Repository<Bet>> {
  MatchBetsRepositoryProvider._({
    required MatchBetsRepositoryFamily super.from,
    required Match super.argument,
  }) : super(
         retry: null,
         name: r'matchBetsRepositoryProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$matchBetsRepositoryHash();

  @override
  String toString() {
    return r'matchBetsRepositoryProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<Repository<Bet>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Repository<Bet> create(Ref ref) {
    final argument = this.argument as Match;
    return matchBetsRepository(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Repository<Bet> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Repository<Bet>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MatchBetsRepositoryProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$matchBetsRepositoryHash() =>
    r'6f8dc00104ad92f8952d78d69eb61dedd3511959';

final class MatchBetsRepositoryFamily extends $Family
    with $FunctionalFamilyOverride<Repository<Bet>, Match> {
  MatchBetsRepositoryFamily._()
    : super(
        retry: null,
        name: r'matchBetsRepositoryProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MatchBetsRepositoryProvider call(Match match) =>
      MatchBetsRepositoryProvider._(argument: match, from: this);

  @override
  String toString() => r'matchBetsRepositoryProvider';
}

@ProviderFor(teamsRepository)
final teamsRepositoryProvider = TeamsRepositoryProvider._();

final class TeamsRepositoryProvider
    extends
        $FunctionalProvider<
          Repository<Team>,
          Repository<Team>,
          Repository<Team>
        >
    with $Provider<Repository<Team>> {
  TeamsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'teamsRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$teamsRepositoryHash();

  @$internal
  @override
  $ProviderElement<Repository<Team>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Repository<Team> create(Ref ref) {
    return teamsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Repository<Team> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Repository<Team>>(value),
    );
  }
}

String _$teamsRepositoryHash() => r'50e3f0916b5b618735a249a8e3f72a377583f665';

@ProviderFor(usersRepository)
final usersRepositoryProvider = UsersRepositoryProvider._();

final class UsersRepositoryProvider
    extends
        $FunctionalProvider<
          Repository<User>,
          Repository<User>,
          Repository<User>
        >
    with $Provider<Repository<User>> {
  UsersRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'usersRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$usersRepositoryHash();

  @$internal
  @override
  $ProviderElement<Repository<User>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Repository<User> create(Ref ref) {
    return usersRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Repository<User> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Repository<User>>(value),
    );
  }
}

String _$usersRepositoryHash() => r'28a0394b8d1342deaf445b90178eb069bab2b6c8';

@ProviderFor(privateTablesRepository)
final privateTablesRepositoryProvider = PrivateTablesRepositoryProvider._();

final class PrivateTablesRepositoryProvider
    extends
        $FunctionalProvider<
          Repository<PrivateTable>,
          Repository<PrivateTable>,
          Repository<PrivateTable>
        >
    with $Provider<Repository<PrivateTable>> {
  PrivateTablesRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'privateTablesRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$privateTablesRepositoryHash();

  @$internal
  @override
  $ProviderElement<Repository<PrivateTable>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  Repository<PrivateTable> create(Ref ref) {
    return privateTablesRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Repository<PrivateTable> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Repository<PrivateTable>>(value),
    );
  }
}

String _$privateTablesRepositoryHash() =>
    r'34a43583cecd62eb7d67a3b7287d94b76cb1d19d';

@ProviderFor(offsideRepository)
final offsideRepositoryProvider = OffsideRepositoryProvider._();

final class OffsideRepositoryProvider
    extends
        $FunctionalProvider<
          OffsideRepository,
          OffsideRepository,
          OffsideRepository
        >
    with $Provider<OffsideRepository> {
  OffsideRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'offsideRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$offsideRepositoryHash();

  @$internal
  @override
  $ProviderElement<OffsideRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  OffsideRepository create(Ref ref) {
    return offsideRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OffsideRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OffsideRepository>(value),
    );
  }
}

String _$offsideRepositoryHash() => r'e99cfee42acfd31e91f361f91e247e90daca323d';

@ProviderFor(authRepository)
final authRepositoryProvider = AuthRepositoryProvider._();

final class AuthRepositoryProvider
    extends $FunctionalProvider<AuthRepository, AuthRepository, AuthRepository>
    with $Provider<AuthRepository> {
  AuthRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authRepositoryHash();

  @$internal
  @override
  $ProviderElement<AuthRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AuthRepository create(Ref ref) {
    return authRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthRepository>(value),
    );
  }
}

String _$authRepositoryHash() => r'a16032d918891f818d3380ffeb81dc116a5d15e8';

@ProviderFor(imageRepository)
final imageRepositoryProvider = ImageRepositoryProvider._();

final class ImageRepositoryProvider
    extends
        $FunctionalProvider<ImageRepository, ImageRepository, ImageRepository>
    with $Provider<ImageRepository> {
  ImageRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'imageRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$imageRepositoryHash();

  @$internal
  @override
  $ProviderElement<ImageRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ImageRepository create(Ref ref) {
    return imageRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ImageRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ImageRepository>(value),
    );
  }
}

String _$imageRepositoryHash() => r'aa88355580f4de3ba66b41b3221f47f90d2ce720';

@ProviderFor(settingsRepository)
final settingsRepositoryProvider = SettingsRepositoryProvider._();

final class SettingsRepositoryProvider
    extends
        $FunctionalProvider<
          SettingsRepository,
          SettingsRepository,
          SettingsRepository
        >
    with $Provider<SettingsRepository> {
  SettingsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'settingsRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$settingsRepositoryHash();

  @$internal
  @override
  $ProviderElement<SettingsRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SettingsRepository create(Ref ref) {
    return settingsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SettingsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SettingsRepository>(value),
    );
  }
}

String _$settingsRepositoryHash() =>
    r'1308cc8a727f31e86dbdf5de9f042d6f5d93bdd0';
