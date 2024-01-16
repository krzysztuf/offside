// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$matchesRepositoryHash() => r'55ccb4d3a9d0db566d06d54bbbf084ec9527c4c3';

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
String _$matchBetsRepositoryHash() =>
    r'0114cb4ec591343bd3b97239eb95c0daf391ae0a';

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

/// See also [matchBetsRepository].
@ProviderFor(matchBetsRepository)
const matchBetsRepositoryProvider = MatchBetsRepositoryFamily();

/// See also [matchBetsRepository].
class MatchBetsRepositoryFamily extends Family<Repository<Bet>> {
  /// See also [matchBetsRepository].
  const MatchBetsRepositoryFamily();

  /// See also [matchBetsRepository].
  MatchBetsRepositoryProvider call(
    Match match,
  ) {
    return MatchBetsRepositoryProvider(
      match,
    );
  }

  @override
  MatchBetsRepositoryProvider getProviderOverride(
    covariant MatchBetsRepositoryProvider provider,
  ) {
    return call(
      provider.match,
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
  String? get name => r'matchBetsRepositoryProvider';
}

/// See also [matchBetsRepository].
class MatchBetsRepositoryProvider extends AutoDisposeProvider<Repository<Bet>> {
  /// See also [matchBetsRepository].
  MatchBetsRepositoryProvider(
    Match match,
  ) : this._internal(
          (ref) => matchBetsRepository(
            ref as MatchBetsRepositoryRef,
            match,
          ),
          from: matchBetsRepositoryProvider,
          name: r'matchBetsRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$matchBetsRepositoryHash,
          dependencies: MatchBetsRepositoryFamily._dependencies,
          allTransitiveDependencies:
              MatchBetsRepositoryFamily._allTransitiveDependencies,
          match: match,
        );

  MatchBetsRepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.match,
  }) : super.internal();

  final Match match;

  @override
  Override overrideWith(
    Repository<Bet> Function(MatchBetsRepositoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MatchBetsRepositoryProvider._internal(
        (ref) => create(ref as MatchBetsRepositoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        match: match,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Repository<Bet>> createElement() {
    return _MatchBetsRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MatchBetsRepositoryProvider && other.match == match;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, match.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MatchBetsRepositoryRef on AutoDisposeProviderRef<Repository<Bet>> {
  /// The parameter `match` of this provider.
  Match get match;
}

class _MatchBetsRepositoryProviderElement
    extends AutoDisposeProviderElement<Repository<Bet>>
    with MatchBetsRepositoryRef {
  _MatchBetsRepositoryProviderElement(super.provider);

  @override
  Match get match => (origin as MatchBetsRepositoryProvider).match;
}

String _$teamsRepositoryHash() => r'8c3693568464f66ef219de90666f497c6c7bc2e4';

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
String _$usersRepositoryHash() => r'21a1e247297c639de66190c317b00b445710f73f';

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
