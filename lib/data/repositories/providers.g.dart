// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$teamsRepositoryHash() => r'e0bebeeff889fe2242eaf25e3343f3403dfbc02f';

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
String _$usersRepositoryHash() => r'e50639d852589b5a20be118fafbfad6a2aa40c2b';

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
