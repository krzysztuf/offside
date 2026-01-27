// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teams_use_case_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getAllTeamsUseCase)
final getAllTeamsUseCaseProvider = GetAllTeamsUseCaseProvider._();

final class GetAllTeamsUseCaseProvider
    extends
        $FunctionalProvider<
          GetAllTeamsUseCase,
          GetAllTeamsUseCase,
          GetAllTeamsUseCase
        >
    with $Provider<GetAllTeamsUseCase> {
  GetAllTeamsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAllTeamsUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAllTeamsUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetAllTeamsUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAllTeamsUseCase create(Ref ref) {
    return getAllTeamsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAllTeamsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAllTeamsUseCase>(value),
    );
  }
}

String _$getAllTeamsUseCaseHash() =>
    r'932cea161996cdaeb77e5a36f6ad27389817ebfb';

@ProviderFor(getWinnerTeamIdUseCase)
final getWinnerTeamIdUseCaseProvider = GetWinnerTeamIdUseCaseProvider._();

final class GetWinnerTeamIdUseCaseProvider
    extends
        $FunctionalProvider<
          GetWinnerTeamIdUseCase,
          GetWinnerTeamIdUseCase,
          GetWinnerTeamIdUseCase
        >
    with $Provider<GetWinnerTeamIdUseCase> {
  GetWinnerTeamIdUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getWinnerTeamIdUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getWinnerTeamIdUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetWinnerTeamIdUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetWinnerTeamIdUseCase create(Ref ref) {
    return getWinnerTeamIdUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetWinnerTeamIdUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetWinnerTeamIdUseCase>(value),
    );
  }
}

String _$getWinnerTeamIdUseCaseHash() =>
    r'feb8cb063711898ed8e8b294248698945147c37d';
