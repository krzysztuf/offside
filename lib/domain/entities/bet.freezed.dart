// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Bet _$BetFromJson(Map<String, dynamic> json) {
  return _Bet.fromJson(json);
}

/// @nodoc
mixin _$Bet {
  int get id => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  Match get match => throw _privateConstructorUsedError;
  MatchGoals get prediction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BetCopyWith<Bet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BetCopyWith<$Res> {
  factory $BetCopyWith(Bet value, $Res Function(Bet) then) =
      _$BetCopyWithImpl<$Res, Bet>;
  @useResult
  $Res call({int id, User user, Match match, MatchGoals prediction});

  $UserCopyWith<$Res> get user;
  $MatchCopyWith<$Res> get match;
  $MatchGoalsCopyWith<$Res> get prediction;
}

/// @nodoc
class _$BetCopyWithImpl<$Res, $Val extends Bet> implements $BetCopyWith<$Res> {
  _$BetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? match = null,
    Object? prediction = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      match: null == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as Match,
      prediction: null == prediction
          ? _value.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as MatchGoals,
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
  $MatchCopyWith<$Res> get match {
    return $MatchCopyWith<$Res>(_value.match, (value) {
      return _then(_value.copyWith(match: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MatchGoalsCopyWith<$Res> get prediction {
    return $MatchGoalsCopyWith<$Res>(_value.prediction, (value) {
      return _then(_value.copyWith(prediction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BetImplCopyWith<$Res> implements $BetCopyWith<$Res> {
  factory _$$BetImplCopyWith(_$BetImpl value, $Res Function(_$BetImpl) then) =
      __$$BetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, User user, Match match, MatchGoals prediction});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $MatchCopyWith<$Res> get match;
  @override
  $MatchGoalsCopyWith<$Res> get prediction;
}

/// @nodoc
class __$$BetImplCopyWithImpl<$Res> extends _$BetCopyWithImpl<$Res, _$BetImpl>
    implements _$$BetImplCopyWith<$Res> {
  __$$BetImplCopyWithImpl(_$BetImpl _value, $Res Function(_$BetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? match = null,
    Object? prediction = null,
  }) {
    return _then(_$BetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      match: null == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as Match,
      prediction: null == prediction
          ? _value.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as MatchGoals,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BetImpl implements _Bet {
  const _$BetImpl(
      {required this.id,
      required this.user,
      required this.match,
      required this.prediction});

  factory _$BetImpl.fromJson(Map<String, dynamic> json) =>
      _$$BetImplFromJson(json);

  @override
  final int id;
  @override
  final User user;
  @override
  final Match match;
  @override
  final MatchGoals prediction;

  @override
  String toString() {
    return 'Bet(id: $id, user: $user, match: $match, prediction: $prediction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.match, match) || other.match == match) &&
            (identical(other.prediction, prediction) ||
                other.prediction == prediction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, user, match, prediction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BetImplCopyWith<_$BetImpl> get copyWith =>
      __$$BetImplCopyWithImpl<_$BetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BetImplToJson(
      this,
    );
  }
}

abstract class _Bet implements Bet {
  const factory _Bet(
      {required final int id,
      required final User user,
      required final Match match,
      required final MatchGoals prediction}) = _$BetImpl;

  factory _Bet.fromJson(Map<String, dynamic> json) = _$BetImpl.fromJson;

  @override
  int get id;
  @override
  User get user;
  @override
  Match get match;
  @override
  MatchGoals get prediction;
  @override
  @JsonKey(ignore: true)
  _$$BetImplCopyWith<_$BetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
