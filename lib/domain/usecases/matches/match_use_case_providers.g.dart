// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_use_case_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(placeBetUseCase)
final placeBetUseCaseProvider = PlaceBetUseCaseFamily._();

final class PlaceBetUseCaseProvider
    extends
        $FunctionalProvider<PlaceBetUseCase, PlaceBetUseCase, PlaceBetUseCase>
    with $Provider<PlaceBetUseCase> {
  PlaceBetUseCaseProvider._({
    required PlaceBetUseCaseFamily super.from,
    required Match super.argument,
  }) : super(
         retry: null,
         name: r'placeBetUseCaseProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$placeBetUseCaseHash();

  @override
  String toString() {
    return r'placeBetUseCaseProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<PlaceBetUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PlaceBetUseCase create(Ref ref) {
    final argument = this.argument as Match;
    return placeBetUseCase(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PlaceBetUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PlaceBetUseCase>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PlaceBetUseCaseProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$placeBetUseCaseHash() => r'd1d02e74eac4299278e2739d0cfd4f16c6cef2ad';

final class PlaceBetUseCaseFamily extends $Family
    with $FunctionalFamilyOverride<PlaceBetUseCase, Match> {
  PlaceBetUseCaseFamily._()
    : super(
        retry: null,
        name: r'placeBetUseCaseProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PlaceBetUseCaseProvider call(Match match) =>
      PlaceBetUseCaseProvider._(argument: match, from: this);

  @override
  String toString() => r'placeBetUseCaseProvider';
}

@ProviderFor(updateMatchUseCase)
final updateMatchUseCaseProvider = UpdateMatchUseCaseProvider._();

final class UpdateMatchUseCaseProvider
    extends
        $FunctionalProvider<
          UpdateMatchUseCase,
          UpdateMatchUseCase,
          UpdateMatchUseCase
        >
    with $Provider<UpdateMatchUseCase> {
  UpdateMatchUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateMatchUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateMatchUseCaseHash();

  @$internal
  @override
  $ProviderElement<UpdateMatchUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UpdateMatchUseCase create(Ref ref) {
    return updateMatchUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UpdateMatchUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UpdateMatchUseCase>(value),
    );
  }
}

String _$updateMatchUseCaseHash() =>
    r'c61291df774d51ab5ac20ed3a6fda8f69765f97f';

@ProviderFor(getRecentMatchesUseCase)
final getRecentMatchesUseCaseProvider = GetRecentMatchesUseCaseProvider._();

final class GetRecentMatchesUseCaseProvider
    extends
        $FunctionalProvider<
          GetRecentMatchesUseCase,
          GetRecentMatchesUseCase,
          GetRecentMatchesUseCase
        >
    with $Provider<GetRecentMatchesUseCase> {
  GetRecentMatchesUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getRecentMatchesUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getRecentMatchesUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetRecentMatchesUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetRecentMatchesUseCase create(Ref ref) {
    return getRecentMatchesUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetRecentMatchesUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetRecentMatchesUseCase>(value),
    );
  }
}

String _$getRecentMatchesUseCaseHash() =>
    r'702b55841b1f78aba9be3bee753f5f499130cc38';
