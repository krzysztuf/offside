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

@ProviderFor(recentMatchesUseCase)
final recentMatchesUseCaseProvider = RecentMatchesUseCaseProvider._();

final class RecentMatchesUseCaseProvider
    extends
        $FunctionalProvider<
          RecentMatchesUseCase,
          RecentMatchesUseCase,
          RecentMatchesUseCase
        >
    with $Provider<RecentMatchesUseCase> {
  RecentMatchesUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'recentMatchesUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$recentMatchesUseCaseHash();

  @$internal
  @override
  $ProviderElement<RecentMatchesUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RecentMatchesUseCase create(Ref ref) {
    return recentMatchesUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RecentMatchesUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RecentMatchesUseCase>(value),
    );
  }
}

String _$recentMatchesUseCaseHash() =>
    r'fcbb2238361806cf669d126fdda1b61fc97047bc';

@ProviderFor(upcomingMatchesUseCase)
final upcomingMatchesUseCaseProvider = UpcomingMatchesUseCaseProvider._();

final class UpcomingMatchesUseCaseProvider
    extends
        $FunctionalProvider<
          UpcomingMatchesUseCase,
          UpcomingMatchesUseCase,
          UpcomingMatchesUseCase
        >
    with $Provider<UpcomingMatchesUseCase> {
  UpcomingMatchesUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'upcomingMatchesUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$upcomingMatchesUseCaseHash();

  @$internal
  @override
  $ProviderElement<UpcomingMatchesUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UpcomingMatchesUseCase create(Ref ref) {
    return upcomingMatchesUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UpcomingMatchesUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UpcomingMatchesUseCase>(value),
    );
  }
}

String _$upcomingMatchesUseCaseHash() =>
    r'5439eba23e4aae5c8937013d5686049e24eeb29d';

@ProviderFor(matchesHistoryUseCase)
final matchesHistoryUseCaseProvider = MatchesHistoryUseCaseProvider._();

final class MatchesHistoryUseCaseProvider
    extends
        $FunctionalProvider<
          MatchesHistoryUseCase,
          MatchesHistoryUseCase,
          MatchesHistoryUseCase
        >
    with $Provider<MatchesHistoryUseCase> {
  MatchesHistoryUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'matchesHistoryUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$matchesHistoryUseCaseHash();

  @$internal
  @override
  $ProviderElement<MatchesHistoryUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  MatchesHistoryUseCase create(Ref ref) {
    return matchesHistoryUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MatchesHistoryUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MatchesHistoryUseCase>(value),
    );
  }
}

String _$matchesHistoryUseCaseHash() =>
    r'b14907aa81638a07b2a3d509eb75f4e479893ad1';
