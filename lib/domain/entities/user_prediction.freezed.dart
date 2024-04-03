// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_prediction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserPrediction {
  User get user => throw _privateConstructorUsedError;
  Goals? get prediction => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserPredictionCopyWith<UserPrediction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPredictionCopyWith<$Res> {
  factory $UserPredictionCopyWith(
          UserPrediction value, $Res Function(UserPrediction) then) =
      _$UserPredictionCopyWithImpl<$Res, UserPrediction>;
  @useResult
  $Res call({User user, Goals? prediction});

  $UserCopyWith<$Res> get user;
  $GoalsCopyWith<$Res>? get prediction;
}

/// @nodoc
class _$UserPredictionCopyWithImpl<$Res, $Val extends UserPrediction>
    implements $UserPredictionCopyWith<$Res> {
  _$UserPredictionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? prediction = freezed,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      prediction: freezed == prediction
          ? _value.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as Goals?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GoalsCopyWith<$Res>? get prediction {
    if (_value.prediction == null) {
      return null;
    }

    return $GoalsCopyWith<$Res>(_value.prediction!, (value) {
      return _then(_value.copyWith(prediction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserPredictionImplCopyWith<$Res>
    implements $UserPredictionCopyWith<$Res> {
  factory _$$UserPredictionImplCopyWith(_$UserPredictionImpl value,
          $Res Function(_$UserPredictionImpl) then) =
      __$$UserPredictionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, Goals? prediction});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $GoalsCopyWith<$Res>? get prediction;
}

/// @nodoc
class __$$UserPredictionImplCopyWithImpl<$Res>
    extends _$UserPredictionCopyWithImpl<$Res, _$UserPredictionImpl>
    implements _$$UserPredictionImplCopyWith<$Res> {
  __$$UserPredictionImplCopyWithImpl(
      _$UserPredictionImpl _value, $Res Function(_$UserPredictionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? prediction = freezed,
  }) {
    return _then(_$UserPredictionImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      prediction: freezed == prediction
          ? _value.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as Goals?,
    ));
  }
}

/// @nodoc

class _$UserPredictionImpl extends _UserPrediction {
  const _$UserPredictionImpl({required this.user, required this.prediction})
      : super._();

  @override
  final User user;
  @override
  final Goals? prediction;

  @override
  String toString() {
    return 'UserPrediction(user: $user, prediction: $prediction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPredictionImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.prediction, prediction) ||
                other.prediction == prediction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, prediction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPredictionImplCopyWith<_$UserPredictionImpl> get copyWith =>
      __$$UserPredictionImplCopyWithImpl<_$UserPredictionImpl>(
          this, _$identity);
}

abstract class _UserPrediction extends UserPrediction {
  const factory _UserPrediction(
      {required final User user,
      required final Goals? prediction}) = _$UserPredictionImpl;
  const _UserPrediction._() : super._();

  @override
  User get user;
  @override
  Goals? get prediction;
  @override
  @JsonKey(ignore: true)
  _$$UserPredictionImplCopyWith<_$UserPredictionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
