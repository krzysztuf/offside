// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$matchesRepositoryHash() => r'78baadbe410dd251b328d49b5aac52687f453809';

/// See also [matchesRepository].
@ProviderFor(matchesRepository)
final matchesRepositoryProvider =
    AutoDisposeProvider<Repository<Match>>.internal(
  matchesRepository,
  name: r'matchesRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$matchesRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MatchesRepositoryRef = AutoDisposeProviderRef<Repository<Match>>;
String _$teamsRepositoryHash() => r'd9da09805615175c41f8e3259d16f8df0e46a640';

/// See also [teamsRepository].
@ProviderFor(teamsRepository)
final teamsRepositoryProvider = AutoDisposeProvider<Repository<Team>>.internal(
  teamsRepository,
  name: r'teamsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$teamsRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TeamsRepositoryRef = AutoDisposeProviderRef<Repository<Team>>;
String _$usersRepositoryHash() => r'57562522b5dcc9ce65c218e41596917cf5d1d5b0';

/// See also [usersRepository].
@ProviderFor(usersRepository)
final usersRepositoryProvider = AutoDisposeProvider<Repository<User>>.internal(
  usersRepository,
  name: r'usersRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$usersRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UsersRepositoryRef = AutoDisposeProviderRef<Repository<User>>;
String _$settingsRepositoryHash() =>
    r'ca060010406df15617fdd8ad7f619fbce1d41685';

/// See also [settingsRepository].
@ProviderFor(settingsRepository)
final settingsRepositoryProvider = Provider<SettingsRepository>.internal(
  settingsRepository,
  name: r'settingsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$settingsRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SettingsRepositoryRef = ProviderRef<SettingsRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
