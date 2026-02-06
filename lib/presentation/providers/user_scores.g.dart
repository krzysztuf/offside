// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_scores.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserScores)
final userScoresProvider = UserScoresProvider._();

final class UserScoresProvider
    extends $AsyncNotifierProvider<UserScores, List<UserScoreSummary>> {
  UserScoresProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userScoresProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userScoresHash();

  @$internal
  @override
  UserScores create() => UserScores();
}

String _$userScoresHash() => r'57ee7734d3219119e886094c05b01abf9ae96d01';

abstract class _$UserScores extends $AsyncNotifier<List<UserScoreSummary>> {
  FutureOr<List<UserScoreSummary>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<UserScoreSummary>>, List<UserScoreSummary>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<UserScoreSummary>>,
                List<UserScoreSummary>
              >,
              AsyncValue<List<UserScoreSummary>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
