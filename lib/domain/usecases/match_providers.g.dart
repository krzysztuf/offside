// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(recentMatches)
final recentMatchesProvider = RecentMatchesProvider._();

final class RecentMatchesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Match>>,
          List<Match>,
          FutureOr<List<Match>>
        >
    with $FutureModifier<List<Match>>, $FutureProvider<List<Match>> {
  RecentMatchesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'recentMatchesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$recentMatchesHash();

  @$internal
  @override
  $FutureProviderElement<List<Match>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Match>> create(Ref ref) {
    return recentMatches(ref);
  }
}

String _$recentMatchesHash() => r'87987cf56e459f34ce299d611833b15e998e5bda';

@ProviderFor(upcomingMatches)
final upcomingMatchesProvider = UpcomingMatchesProvider._();

final class UpcomingMatchesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Match>>,
          List<Match>,
          FutureOr<List<Match>>
        >
    with $FutureModifier<List<Match>>, $FutureProvider<List<Match>> {
  UpcomingMatchesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'upcomingMatchesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$upcomingMatchesHash();

  @$internal
  @override
  $FutureProviderElement<List<Match>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Match>> create(Ref ref) {
    return upcomingMatches(ref);
  }
}

String _$upcomingMatchesHash() => r'7349c8f288be2ea913873411c53fc957808c9ce6';

@ProviderFor(matchesHistory)
final matchesHistoryProvider = MatchesHistoryProvider._();

final class MatchesHistoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Match>>,
          List<Match>,
          FutureOr<List<Match>>
        >
    with $FutureModifier<List<Match>>, $FutureProvider<List<Match>> {
  MatchesHistoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'matchesHistoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$matchesHistoryHash();

  @$internal
  @override
  $FutureProviderElement<List<Match>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Match>> create(Ref ref) {
    return matchesHistory(ref);
  }
}

String _$matchesHistoryHash() => r'2e321d868831e61e797e7b543043dc60b9b6e52e';

@ProviderFor(placeBet)
final placeBetProvider = PlaceBetFamily._();

final class PlaceBetProvider
    extends $FunctionalProvider<AsyncValue<int>, int, FutureOr<int>>
    with $FutureModifier<int>, $FutureProvider<int> {
  PlaceBetProvider._({
    required PlaceBetFamily super.from,
    required (Match, Bet) super.argument,
  }) : super(
         retry: null,
         name: r'placeBetProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$placeBetHash();

  @override
  String toString() {
    return r'placeBetProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<int> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<int> create(Ref ref) {
    final argument = this.argument as (Match, Bet);
    return placeBet(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is PlaceBetProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$placeBetHash() => r'955f1a4ca452d7791ac291a59d107cd6893cfc1a';

final class PlaceBetFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<int>, (Match, Bet)> {
  PlaceBetFamily._()
    : super(
        retry: null,
        name: r'placeBetProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PlaceBetProvider call(Match match, Bet bet) =>
      PlaceBetProvider._(argument: (match, bet), from: this);

  @override
  String toString() => r'placeBetProvider';
}

@ProviderFor(updateMatch)
final updateMatchProvider = UpdateMatchFamily._();

final class UpdateMatchProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  UpdateMatchProvider._({
    required UpdateMatchFamily super.from,
    required Match super.argument,
  }) : super(
         retry: null,
         name: r'updateMatchProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$updateMatchHash();

  @override
  String toString() {
    return r'updateMatchProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    final argument = this.argument as Match;
    return updateMatch(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateMatchProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$updateMatchHash() => r'77ac0fc4ec5a9650bb6b07d72b116c76cd1f06c9';

final class UpdateMatchFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<void>, Match> {
  UpdateMatchFamily._()
    : super(
        retry: null,
        name: r'updateMatchProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UpdateMatchProvider call(Match match) =>
      UpdateMatchProvider._(argument: match, from: this);

  @override
  String toString() => r'updateMatchProvider';
}
