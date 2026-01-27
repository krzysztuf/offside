// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_use_case_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getAllMatchesUseCase)
final getAllMatchesUseCaseProvider = GetAllMatchesUseCaseProvider._();

final class GetAllMatchesUseCaseProvider
    extends
        $FunctionalProvider<
          GetAllMatchesUseCase,
          GetAllMatchesUseCase,
          GetAllMatchesUseCase
        >
    with $Provider<GetAllMatchesUseCase> {
  GetAllMatchesUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAllMatchesUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAllMatchesUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetAllMatchesUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAllMatchesUseCase create(Ref ref) {
    return getAllMatchesUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAllMatchesUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAllMatchesUseCase>(value),
    );
  }
}

String _$getAllMatchesUseCaseHash() =>
    r'02a15fb163df047af25b1e7b7b585ca57da11e39';

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

@ProviderFor(addMatchUseCase)
final addMatchUseCaseProvider = AddMatchUseCaseProvider._();

final class AddMatchUseCaseProvider
    extends
        $FunctionalProvider<AddMatchUseCase, AddMatchUseCase, AddMatchUseCase>
    with $Provider<AddMatchUseCase> {
  AddMatchUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addMatchUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addMatchUseCaseHash();

  @$internal
  @override
  $ProviderElement<AddMatchUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AddMatchUseCase create(Ref ref) {
    return addMatchUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddMatchUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddMatchUseCase>(value),
    );
  }
}

String _$addMatchUseCaseHash() => r'f412e70afa2ef137e7d36fa01e762ecf959dd72d';

@ProviderFor(removeMatchUseCase)
final removeMatchUseCaseProvider = RemoveMatchUseCaseProvider._();

final class RemoveMatchUseCaseProvider
    extends
        $FunctionalProvider<
          RemoveMatchUseCase,
          RemoveMatchUseCase,
          RemoveMatchUseCase
        >
    with $Provider<RemoveMatchUseCase> {
  RemoveMatchUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'removeMatchUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$removeMatchUseCaseHash();

  @$internal
  @override
  $ProviderElement<RemoveMatchUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RemoveMatchUseCase create(Ref ref) {
    return removeMatchUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RemoveMatchUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RemoveMatchUseCase>(value),
    );
  }
}

String _$removeMatchUseCaseHash() =>
    r'a8bc87ed61971f40040b584afc0532ca36f71e7a';

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

@ProviderFor(getUpcomingMatchesUseCase)
final getUpcomingMatchesUseCaseProvider = GetUpcomingMatchesUseCaseProvider._();

final class GetUpcomingMatchesUseCaseProvider
    extends
        $FunctionalProvider<
          GetUpcomingMatchesUseCase,
          GetUpcomingMatchesUseCase,
          GetUpcomingMatchesUseCase
        >
    with $Provider<GetUpcomingMatchesUseCase> {
  GetUpcomingMatchesUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getUpcomingMatchesUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getUpcomingMatchesUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetUpcomingMatchesUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetUpcomingMatchesUseCase create(Ref ref) {
    return getUpcomingMatchesUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetUpcomingMatchesUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetUpcomingMatchesUseCase>(value),
    );
  }
}

String _$getUpcomingMatchesUseCaseHash() =>
    r'5e3f28e250015aa5f77ac1cbcd9d2893879c2dd6';

@ProviderFor(getMatchHistoryUseCase)
final getMatchHistoryUseCaseProvider = GetMatchHistoryUseCaseProvider._();

final class GetMatchHistoryUseCaseProvider
    extends
        $FunctionalProvider<
          GetMatchHistoryUseCase,
          GetMatchHistoryUseCase,
          GetMatchHistoryUseCase
        >
    with $Provider<GetMatchHistoryUseCase> {
  GetMatchHistoryUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getMatchHistoryUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getMatchHistoryUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetMatchHistoryUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetMatchHistoryUseCase create(Ref ref) {
    return getMatchHistoryUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetMatchHistoryUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetMatchHistoryUseCase>(value),
    );
  }
}

String _$getMatchHistoryUseCaseHash() =>
    r'06862d6a52d374d4a8915eeb3916227a2fcd3d05';
