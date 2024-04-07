// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_use_case_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getCurrentUserUseCaseHash() =>
    r'2bfb50cc93f3e27dd4f9b2fbd1bd437ef696940d';

/// See also [getCurrentUserUseCase].
@ProviderFor(getCurrentUserUseCase)
final getCurrentUserUseCaseProvider =
    AutoDisposeProvider<GetCurrentUserUseCase>.internal(
  getCurrentUserUseCase,
  name: r'getCurrentUserUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getCurrentUserUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetCurrentUserUseCaseRef
    = AutoDisposeProviderRef<GetCurrentUserUseCase>;
String _$getAllUsersUseCaseHash() =>
    r'1def5057c472e27a35a6f57c7679bcffa7294a8c';

/// See also [getAllUsersUseCase].
@ProviderFor(getAllUsersUseCase)
final getAllUsersUseCaseProvider =
    AutoDisposeProvider<GetAllUsersUseCase>.internal(
  getAllUsersUseCase,
  name: r'getAllUsersUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getAllUsersUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetAllUsersUseCaseRef = AutoDisposeProviderRef<GetAllUsersUseCase>;
String _$getUserBetsUseCaseHash() =>
    r'267eaa9f25eea76edd775381b2c2f9e0ed74efc8';

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

/// See also [getUserBetsUseCase].
@ProviderFor(getUserBetsUseCase)
const getUserBetsUseCaseProvider = GetUserBetsUseCaseFamily();

/// See also [getUserBetsUseCase].
class GetUserBetsUseCaseFamily extends Family<GetUserBetsUseCase> {
  /// See also [getUserBetsUseCase].
  const GetUserBetsUseCaseFamily();

  /// See also [getUserBetsUseCase].
  GetUserBetsUseCaseProvider call(
    User user,
  ) {
    return GetUserBetsUseCaseProvider(
      user,
    );
  }

  @override
  GetUserBetsUseCaseProvider getProviderOverride(
    covariant GetUserBetsUseCaseProvider provider,
  ) {
    return call(
      provider.user,
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
  String? get name => r'getUserBetsUseCaseProvider';
}

/// See also [getUserBetsUseCase].
class GetUserBetsUseCaseProvider
    extends AutoDisposeProvider<GetUserBetsUseCase> {
  /// See also [getUserBetsUseCase].
  GetUserBetsUseCaseProvider(
    User user,
  ) : this._internal(
          (ref) => getUserBetsUseCase(
            ref as GetUserBetsUseCaseRef,
            user,
          ),
          from: getUserBetsUseCaseProvider,
          name: r'getUserBetsUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getUserBetsUseCaseHash,
          dependencies: GetUserBetsUseCaseFamily._dependencies,
          allTransitiveDependencies:
              GetUserBetsUseCaseFamily._allTransitiveDependencies,
          user: user,
        );

  GetUserBetsUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.user,
  }) : super.internal();

  final User user;

  @override
  Override overrideWith(
    GetUserBetsUseCase Function(GetUserBetsUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetUserBetsUseCaseProvider._internal(
        (ref) => create(ref as GetUserBetsUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        user: user,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<GetUserBetsUseCase> createElement() {
    return _GetUserBetsUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetUserBetsUseCaseProvider && other.user == user;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, user.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetUserBetsUseCaseRef on AutoDisposeProviderRef<GetUserBetsUseCase> {
  /// The parameter `user` of this provider.
  User get user;
}

class _GetUserBetsUseCaseProviderElement
    extends AutoDisposeProviderElement<GetUserBetsUseCase>
    with GetUserBetsUseCaseRef {
  _GetUserBetsUseCaseProviderElement(super.provider);

  @override
  User get user => (origin as GetUserBetsUseCaseProvider).user;
}

String _$getLoggedInUserUseCaseHash() =>
    r'ada83d6c13af8d47ef8a4749c2ba8b5035623773';

/// See also [getLoggedInUserUseCase].
@ProviderFor(getLoggedInUserUseCase)
final getLoggedInUserUseCaseProvider =
    AutoDisposeProvider<GetLoggedInUserUseCase>.internal(
  getLoggedInUserUseCase,
  name: r'getLoggedInUserUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getLoggedInUserUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetLoggedInUserUseCaseRef
    = AutoDisposeProviderRef<GetLoggedInUserUseCase>;
String _$addUserUseCaseHash() => r'a2de6fac0065d8e2bf781b4e5e8121c41cd441bf';

/// See also [addUserUseCase].
@ProviderFor(addUserUseCase)
final addUserUseCaseProvider = AutoDisposeProvider<AddUserUseCase>.internal(
  addUserUseCase,
  name: r'addUserUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$addUserUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AddUserUseCaseRef = AutoDisposeProviderRef<AddUserUseCase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
