// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_use_cases.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$upcomingMatchesUseCaseHash() =>
    r'57774f7a92fb87d74879dc935b4561b84ea2d6cb';

/// See also [upcomingMatchesUseCase].
@ProviderFor(upcomingMatchesUseCase)
final upcomingMatchesUseCaseProvider =
    AutoDisposeProvider<GetUpcomingMatchesUseCase>.internal(
  upcomingMatchesUseCase,
  name: r'upcomingMatchesUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$upcomingMatchesUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UpcomingMatchesUseCaseRef
    = AutoDisposeProviderRef<GetUpcomingMatchesUseCase>;
String _$placeBetUseCaseHash() => r'7c3e8dfd015d0163d3fb635cd9fbceab6a2e7f1c';

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

/// See also [placeBetUseCase].
@ProviderFor(placeBetUseCase)
const placeBetUseCaseProvider = PlaceBetUseCaseFamily();

/// See also [placeBetUseCase].
class PlaceBetUseCaseFamily extends Family<PlaceBetUseCase> {
  /// See also [placeBetUseCase].
  const PlaceBetUseCaseFamily();

  /// See also [placeBetUseCase].
  PlaceBetUseCaseProvider call(
    Match match,
  ) {
    return PlaceBetUseCaseProvider(
      match,
    );
  }

  @override
  PlaceBetUseCaseProvider getProviderOverride(
    covariant PlaceBetUseCaseProvider provider,
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
  String? get name => r'placeBetUseCaseProvider';
}

/// See also [placeBetUseCase].
class PlaceBetUseCaseProvider extends AutoDisposeProvider<PlaceBetUseCase> {
  /// See also [placeBetUseCase].
  PlaceBetUseCaseProvider(
    Match match,
  ) : this._internal(
          (ref) => placeBetUseCase(
            ref as PlaceBetUseCaseRef,
            match,
          ),
          from: placeBetUseCaseProvider,
          name: r'placeBetUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$placeBetUseCaseHash,
          dependencies: PlaceBetUseCaseFamily._dependencies,
          allTransitiveDependencies:
              PlaceBetUseCaseFamily._allTransitiveDependencies,
          match: match,
        );

  PlaceBetUseCaseProvider._internal(
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
    PlaceBetUseCase Function(PlaceBetUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PlaceBetUseCaseProvider._internal(
        (ref) => create(ref as PlaceBetUseCaseRef),
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
  AutoDisposeProviderElement<PlaceBetUseCase> createElement() {
    return _PlaceBetUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PlaceBetUseCaseProvider && other.match == match;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, match.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PlaceBetUseCaseRef on AutoDisposeProviderRef<PlaceBetUseCase> {
  /// The parameter `match` of this provider.
  Match get match;
}

class _PlaceBetUseCaseProviderElement
    extends AutoDisposeProviderElement<PlaceBetUseCase>
    with PlaceBetUseCaseRef {
  _PlaceBetUseCaseProviderElement(super.provider);

  @override
  Match get match => (origin as PlaceBetUseCaseProvider).match;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
