// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'competition_started_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(competitionStarted)
final competitionStartedProvider = CompetitionStartedProvider._();

final class CompetitionStartedProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  CompetitionStartedProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'competitionStartedProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$competitionStartedHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return competitionStarted(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$competitionStartedHash() =>
    r'c4f107d20ea89e3bc168a7e6d9fc292a5ce3a939';
