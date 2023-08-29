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
  String get id => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  Match get match => throw _privateConstructorUsedError;
  Team get chosenTeam => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BetCopyWith<Bet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BetCopyWith<$Res> {
  factory $BetCopyWith(Bet value, $Res Function(Bet) then) =
      _$BetCopyWithImpl<$Res, Bet>;
  @useResult
  $Res call({String id, User user, Match match, Team chosenTeam});

  $UserCopyWith<$Res> get user;
  $MatchCopyWith<$Res> get match;
  $TeamCopyWith<$Res> get chosenTeam;
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
    Object? chosenTeam = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      match: null == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as Match,
      chosenTeam: null == chosenTeam
          ? _value.chosenTeam
          : chosenTeam // ignore: cast_nullable_to_non_nullable
              as Team,
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
  $TeamCopyWith<$Res> get chosenTeam {
    return $TeamCopyWith<$Res>(_value.chosenTeam, (value) {
      return _then(_value.copyWith(chosenTeam: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BetCopyWith<$Res> implements $BetCopyWith<$Res> {
  factory _$$_BetCopyWith(_$_Bet value, $Res Function(_$_Bet) then) =
      __$$_BetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, User user, Match match, Team chosenTeam});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $MatchCopyWith<$Res> get match;
  @override
  $TeamCopyWith<$Res> get chosenTeam;
}

/// @nodoc
class __$$_BetCopyWithImpl<$Res> extends _$BetCopyWithImpl<$Res, _$_Bet>
    implements _$$_BetCopyWith<$Res> {
  __$$_BetCopyWithImpl(_$_Bet _value, $Res Function(_$_Bet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? match = null,
    Object? chosenTeam = null,
  }) {
    return _then(_$_Bet(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      match: null == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as Match,
      chosenTeam: null == chosenTeam
          ? _value.chosenTeam
          : chosenTeam // ignore: cast_nullable_to_non_nullable
              as Team,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Bet implements _Bet {
  const _$_Bet(
      {required this.id,
      required this.user,
      required this.match,
      required this.chosenTeam});

  factory _$_Bet.fromJson(Map<String, dynamic> json) => _$$_BetFromJson(json);

  @override
  final String id;
  @override
  final User user;
  @override
  final Match match;
  @override
  final Team chosenTeam;

  @override
  String toString() {
    return 'Bet(id: $id, user: $user, match: $match, chosenTeam: $chosenTeam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bet &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.match, match) || other.match == match) &&
            (identical(other.chosenTeam, chosenTeam) ||
                other.chosenTeam == chosenTeam));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, user, match, chosenTeam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BetCopyWith<_$_Bet> get copyWith =>
      __$$_BetCopyWithImpl<_$_Bet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BetToJson(
      this,
    );
  }
}

abstract class _Bet implements Bet {
  const factory _Bet(
      {required final String id,
      required final User user,
      required final Match match,
      required final Team chosenTeam}) = _$_Bet;

  factory _Bet.fromJson(Map<String, dynamic> json) = _$_Bet.fromJson;

  @override
  String get id;
  @override
  User get user;
  @override
  Match get match;
  @override
  Team get chosenTeam;
  @override
  @JsonKey(ignore: true)
  _$$_BetCopyWith<_$_Bet> get copyWith => throw _privateConstructorUsedError;
}
