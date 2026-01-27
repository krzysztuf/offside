// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_use_case_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getCurrentUserUseCase)
final getCurrentUserUseCaseProvider = GetCurrentUserUseCaseProvider._();

final class GetCurrentUserUseCaseProvider
    extends
        $FunctionalProvider<
          GetCurrentUserUseCase,
          GetCurrentUserUseCase,
          GetCurrentUserUseCase
        >
    with $Provider<GetCurrentUserUseCase> {
  GetCurrentUserUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getCurrentUserUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getCurrentUserUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetCurrentUserUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetCurrentUserUseCase create(Ref ref) {
    return getCurrentUserUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetCurrentUserUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetCurrentUserUseCase>(value),
    );
  }
}

String _$getCurrentUserUseCaseHash() =>
    r'ed1bf8dfa623a08b988900c5a449afaf947515e3';

@ProviderFor(getAllUsersUseCase)
final getAllUsersUseCaseProvider = GetAllUsersUseCaseProvider._();

final class GetAllUsersUseCaseProvider
    extends
        $FunctionalProvider<
          GetAllUsersUseCase,
          GetAllUsersUseCase,
          GetAllUsersUseCase
        >
    with $Provider<GetAllUsersUseCase> {
  GetAllUsersUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAllUsersUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAllUsersUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetAllUsersUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAllUsersUseCase create(Ref ref) {
    return getAllUsersUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAllUsersUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAllUsersUseCase>(value),
    );
  }
}

String _$getAllUsersUseCaseHash() =>
    r'6f3d16c3d69c70bacb8c8f920b3cac530d11c1fd';

@ProviderFor(getUserBetsUseCase)
final getUserBetsUseCaseProvider = GetUserBetsUseCaseFamily._();

final class GetUserBetsUseCaseProvider
    extends
        $FunctionalProvider<
          GetUserBetsUseCase,
          GetUserBetsUseCase,
          GetUserBetsUseCase
        >
    with $Provider<GetUserBetsUseCase> {
  GetUserBetsUseCaseProvider._({
    required GetUserBetsUseCaseFamily super.from,
    required User super.argument,
  }) : super(
         retry: null,
         name: r'getUserBetsUseCaseProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getUserBetsUseCaseHash();

  @override
  String toString() {
    return r'getUserBetsUseCaseProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<GetUserBetsUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetUserBetsUseCase create(Ref ref) {
    final argument = this.argument as User;
    return getUserBetsUseCase(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetUserBetsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetUserBetsUseCase>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GetUserBetsUseCaseProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getUserBetsUseCaseHash() =>
    r'3faba3d9d4893f4b591dcbcee2088f362d1f91c0';

final class GetUserBetsUseCaseFamily extends $Family
    with $FunctionalFamilyOverride<GetUserBetsUseCase, User> {
  GetUserBetsUseCaseFamily._()
    : super(
        retry: null,
        name: r'getUserBetsUseCaseProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetUserBetsUseCaseProvider call(User user) =>
      GetUserBetsUseCaseProvider._(argument: user, from: this);

  @override
  String toString() => r'getUserBetsUseCaseProvider';
}

@ProviderFor(getLoggedInUserUseCase)
final getLoggedInUserUseCaseProvider = GetLoggedInUserUseCaseProvider._();

final class GetLoggedInUserUseCaseProvider
    extends
        $FunctionalProvider<
          GetLoggedInUserUseCase,
          GetLoggedInUserUseCase,
          GetLoggedInUserUseCase
        >
    with $Provider<GetLoggedInUserUseCase> {
  GetLoggedInUserUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getLoggedInUserUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getLoggedInUserUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetLoggedInUserUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetLoggedInUserUseCase create(Ref ref) {
    return getLoggedInUserUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetLoggedInUserUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetLoggedInUserUseCase>(value),
    );
  }
}

String _$getLoggedInUserUseCaseHash() =>
    r'377c8b6765a46950acea122694ca2f7bf16f22d5';

@ProviderFor(addUserUseCase)
final addUserUseCaseProvider = AddUserUseCaseProvider._();

final class AddUserUseCaseProvider
    extends $FunctionalProvider<AddUserUseCase, AddUserUseCase, AddUserUseCase>
    with $Provider<AddUserUseCase> {
  AddUserUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addUserUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addUserUseCaseHash();

  @$internal
  @override
  $ProviderElement<AddUserUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AddUserUseCase create(Ref ref) {
    return addUserUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddUserUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddUserUseCase>(value),
    );
  }
}

String _$addUserUseCaseHash() => r'4814cb86d007e92ad3a6d0b9edd65daf1351eef9';

@ProviderFor(removeUserUseCase)
final removeUserUseCaseProvider = RemoveUserUseCaseProvider._();

final class RemoveUserUseCaseProvider
    extends
        $FunctionalProvider<
          RemoveUserUseCase,
          RemoveUserUseCase,
          RemoveUserUseCase
        >
    with $Provider<RemoveUserUseCase> {
  RemoveUserUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'removeUserUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$removeUserUseCaseHash();

  @$internal
  @override
  $ProviderElement<RemoveUserUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RemoveUserUseCase create(Ref ref) {
    return removeUserUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RemoveUserUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RemoveUserUseCase>(value),
    );
  }
}

String _$removeUserUseCaseHash() => r'89505fff5d8d6e232a40f507bceebd2994dd19e5';

@ProviderFor(updateUserUseCase)
final updateUserUseCaseProvider = UpdateUserUseCaseProvider._();

final class UpdateUserUseCaseProvider
    extends
        $FunctionalProvider<
          UpdateUserUseCase,
          UpdateUserUseCase,
          UpdateUserUseCase
        >
    with $Provider<UpdateUserUseCase> {
  UpdateUserUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateUserUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateUserUseCaseHash();

  @$internal
  @override
  $ProviderElement<UpdateUserUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UpdateUserUseCase create(Ref ref) {
    return updateUserUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UpdateUserUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UpdateUserUseCase>(value),
    );
  }
}

String _$updateUserUseCaseHash() => r'375b38cc0f1baa302034ad63123498c2b785db51';

@ProviderFor(uploadUserAvatarUseCase)
final uploadUserAvatarUseCaseProvider = UploadUserAvatarUseCaseProvider._();

final class UploadUserAvatarUseCaseProvider
    extends
        $FunctionalProvider<
          UploadUserAvatarUseCase,
          UploadUserAvatarUseCase,
          UploadUserAvatarUseCase
        >
    with $Provider<UploadUserAvatarUseCase> {
  UploadUserAvatarUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'uploadUserAvatarUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$uploadUserAvatarUseCaseHash();

  @$internal
  @override
  $ProviderElement<UploadUserAvatarUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UploadUserAvatarUseCase create(Ref ref) {
    return uploadUserAvatarUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UploadUserAvatarUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UploadUserAvatarUseCase>(value),
    );
  }
}

String _$uploadUserAvatarUseCaseHash() =>
    r'bf839aa77bb71a63df85f497ae501654509ead2a';

@ProviderFor(emailIsWhiteListedUseCase)
final emailIsWhiteListedUseCaseProvider = EmailIsWhiteListedUseCaseProvider._();

final class EmailIsWhiteListedUseCaseProvider
    extends
        $FunctionalProvider<
          EmailIsWhiteListedUseCase,
          EmailIsWhiteListedUseCase,
          EmailIsWhiteListedUseCase
        >
    with $Provider<EmailIsWhiteListedUseCase> {
  EmailIsWhiteListedUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'emailIsWhiteListedUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$emailIsWhiteListedUseCaseHash();

  @$internal
  @override
  $ProviderElement<EmailIsWhiteListedUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  EmailIsWhiteListedUseCase create(Ref ref) {
    return emailIsWhiteListedUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EmailIsWhiteListedUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EmailIsWhiteListedUseCase>(value),
    );
  }
}

String _$emailIsWhiteListedUseCaseHash() =>
    r'2430ca553b02791b425e9eed3f44d7ae8d51e383';
