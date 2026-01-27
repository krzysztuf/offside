// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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

String _$matchesRepositoryHash() => r'b45660079c9755aa802394a909ba2dcd29b23421';

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
    r'd9256f26d9d74509c38319db7660bb36f37ee3f1';

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

String _$teamsRepositoryHash() => r'a5796c7fc986dc2e7561310fa6f827cdd72bb5f6';

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

String _$usersRepositoryHash() => r'f5297e8424e118077f762f4af7cb0c5502eb4fde';

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
    r'dfe0867cb6ba1a1eccfb8b0cde2fcddf004c2e0c';

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

String _$offsideRepositoryHash() => r'a98d5bdc6c509dc344b110b904505ca52a0151f8';

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

String _$authRepositoryHash() => r'1c4cc0cbdea7394c801de6cf51098bf5430f2da9';

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
