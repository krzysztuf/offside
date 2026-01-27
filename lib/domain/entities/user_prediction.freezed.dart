// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_prediction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserPrediction {

 User get user; MatchOutcome? get prediction;
/// Create a copy of UserPrediction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPredictionCopyWith<UserPrediction> get copyWith => _$UserPredictionCopyWithImpl<UserPrediction>(this as UserPrediction, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPrediction&&(identical(other.user, user) || other.user == user)&&(identical(other.prediction, prediction) || other.prediction == prediction));
}


@override
int get hashCode => Object.hash(runtimeType,user,prediction);

@override
String toString() {
  return 'UserPrediction(user: $user, prediction: $prediction)';
}


}

/// @nodoc
abstract mixin class $UserPredictionCopyWith<$Res>  {
  factory $UserPredictionCopyWith(UserPrediction value, $Res Function(UserPrediction) _then) = _$UserPredictionCopyWithImpl;
@useResult
$Res call({
 User user, MatchOutcome? prediction
});


$UserCopyWith<$Res> get user;$MatchOutcomeCopyWith<$Res>? get prediction;

}
/// @nodoc
class _$UserPredictionCopyWithImpl<$Res>
    implements $UserPredictionCopyWith<$Res> {
  _$UserPredictionCopyWithImpl(this._self, this._then);

  final UserPrediction _self;
  final $Res Function(UserPrediction) _then;

/// Create a copy of UserPrediction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? prediction = freezed,}) {
  return _then(_self.copyWith(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,prediction: freezed == prediction ? _self.prediction : prediction // ignore: cast_nullable_to_non_nullable
as MatchOutcome?,
  ));
}
/// Create a copy of UserPrediction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of UserPrediction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchOutcomeCopyWith<$Res>? get prediction {
    if (_self.prediction == null) {
    return null;
  }

  return $MatchOutcomeCopyWith<$Res>(_self.prediction!, (value) {
    return _then(_self.copyWith(prediction: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserPrediction].
extension UserPredictionPatterns on UserPrediction {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPrediction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPrediction() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPrediction value)  $default,){
final _that = this;
switch (_that) {
case _UserPrediction():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPrediction value)?  $default,){
final _that = this;
switch (_that) {
case _UserPrediction() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( User user,  MatchOutcome? prediction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPrediction() when $default != null:
return $default(_that.user,_that.prediction);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( User user,  MatchOutcome? prediction)  $default,) {final _that = this;
switch (_that) {
case _UserPrediction():
return $default(_that.user,_that.prediction);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( User user,  MatchOutcome? prediction)?  $default,) {final _that = this;
switch (_that) {
case _UserPrediction() when $default != null:
return $default(_that.user,_that.prediction);case _:
  return null;

}
}

}

/// @nodoc


class _UserPrediction extends UserPrediction {
  const _UserPrediction({required this.user, required this.prediction}): super._();
  

@override final  User user;
@override final  MatchOutcome? prediction;

/// Create a copy of UserPrediction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPredictionCopyWith<_UserPrediction> get copyWith => __$UserPredictionCopyWithImpl<_UserPrediction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPrediction&&(identical(other.user, user) || other.user == user)&&(identical(other.prediction, prediction) || other.prediction == prediction));
}


@override
int get hashCode => Object.hash(runtimeType,user,prediction);

@override
String toString() {
  return 'UserPrediction(user: $user, prediction: $prediction)';
}


}

/// @nodoc
abstract mixin class _$UserPredictionCopyWith<$Res> implements $UserPredictionCopyWith<$Res> {
  factory _$UserPredictionCopyWith(_UserPrediction value, $Res Function(_UserPrediction) _then) = __$UserPredictionCopyWithImpl;
@override @useResult
$Res call({
 User user, MatchOutcome? prediction
});


@override $UserCopyWith<$Res> get user;@override $MatchOutcomeCopyWith<$Res>? get prediction;

}
/// @nodoc
class __$UserPredictionCopyWithImpl<$Res>
    implements _$UserPredictionCopyWith<$Res> {
  __$UserPredictionCopyWithImpl(this._self, this._then);

  final _UserPrediction _self;
  final $Res Function(_UserPrediction) _then;

/// Create a copy of UserPrediction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? prediction = freezed,}) {
  return _then(_UserPrediction(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,prediction: freezed == prediction ? _self.prediction : prediction // ignore: cast_nullable_to_non_nullable
as MatchOutcome?,
  ));
}

/// Create a copy of UserPrediction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of UserPrediction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchOutcomeCopyWith<$Res>? get prediction {
    if (_self.prediction == null) {
    return null;
  }

  return $MatchOutcomeCopyWith<$Res>(_self.prediction!, (value) {
    return _then(_self.copyWith(prediction: value));
  });
}
}

// dart format on
