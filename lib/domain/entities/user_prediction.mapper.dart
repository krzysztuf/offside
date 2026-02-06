// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_prediction.dart';

class UserPredictionMapper extends ClassMapperBase<UserPrediction> {
  UserPredictionMapper._();

  static UserPredictionMapper? _instance;
  static UserPredictionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserPredictionMapper._());
      UserMapper.ensureInitialized();
      MatchOutcomeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserPrediction';

  static User _$user(UserPrediction v) => v.user;
  static const Field<UserPrediction, User> _f$user = Field('user', _$user);
  static MatchOutcome? _$prediction(UserPrediction v) => v.prediction;
  static const Field<UserPrediction, MatchOutcome> _f$prediction = Field(
    'prediction',
    _$prediction,
  );

  @override
  final MappableFields<UserPrediction> fields = const {
    #user: _f$user,
    #prediction: _f$prediction,
  };

  static UserPrediction _instantiate(DecodingData data) {
    return UserPrediction(
      user: data.dec(_f$user),
      prediction: data.dec(_f$prediction),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static UserPrediction fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserPrediction>(map);
  }

  static UserPrediction fromJson(String json) {
    return ensureInitialized().decodeJson<UserPrediction>(json);
  }
}

mixin UserPredictionMappable {
  String toJson() {
    return UserPredictionMapper.ensureInitialized().encodeJson<UserPrediction>(
      this as UserPrediction,
    );
  }

  Map<String, dynamic> toMap() {
    return UserPredictionMapper.ensureInitialized().encodeMap<UserPrediction>(
      this as UserPrediction,
    );
  }

  UserPredictionCopyWith<UserPrediction, UserPrediction, UserPrediction>
  get copyWith => _UserPredictionCopyWithImpl<UserPrediction, UserPrediction>(
    this as UserPrediction,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return UserPredictionMapper.ensureInitialized().stringifyValue(
      this as UserPrediction,
    );
  }

  @override
  bool operator ==(Object other) {
    return UserPredictionMapper.ensureInitialized().equalsValue(
      this as UserPrediction,
      other,
    );
  }

  @override
  int get hashCode {
    return UserPredictionMapper.ensureInitialized().hashValue(
      this as UserPrediction,
    );
  }
}

extension UserPredictionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UserPrediction, $Out> {
  UserPredictionCopyWith<$R, UserPrediction, $Out> get $asUserPrediction =>
      $base.as((v, t, t2) => _UserPredictionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserPredictionCopyWith<$R, $In extends UserPrediction, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  UserCopyWith<$R, User, User> get user;
  MatchOutcomeCopyWith<$R, MatchOutcome, MatchOutcome>? get prediction;
  $R call({User? user, MatchOutcome? prediction});
  UserPredictionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _UserPredictionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserPrediction, $Out>
    implements UserPredictionCopyWith<$R, UserPrediction, $Out> {
  _UserPredictionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserPrediction> $mapper =
      UserPredictionMapper.ensureInitialized();
  @override
  UserCopyWith<$R, User, User> get user =>
      $value.user.copyWith.$chain((v) => call(user: v));
  @override
  MatchOutcomeCopyWith<$R, MatchOutcome, MatchOutcome>? get prediction =>
      $value.prediction?.copyWith.$chain((v) => call(prediction: v));
  @override
  $R call({User? user, Object? prediction = $none}) => $apply(
    FieldCopyWithData({
      if (user != null) #user: user,
      if (prediction != $none) #prediction: prediction,
    }),
  );
  @override
  UserPrediction $make(CopyWithData data) => UserPrediction(
    user: data.get(#user, or: $value.user),
    prediction: data.get(#prediction, or: $value.prediction),
  );

  @override
  UserPredictionCopyWith<$R2, UserPrediction, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UserPredictionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

