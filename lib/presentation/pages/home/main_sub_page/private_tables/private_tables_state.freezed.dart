// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'private_tables_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PrivateTablesState {

 List<PrivateTable> get tables;
/// Create a copy of PrivateTablesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrivateTablesStateCopyWith<PrivateTablesState> get copyWith => _$PrivateTablesStateCopyWithImpl<PrivateTablesState>(this as PrivateTablesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrivateTablesState&&const DeepCollectionEquality().equals(other.tables, tables));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(tables));

@override
String toString() {
  return 'PrivateTablesState(tables: $tables)';
}


}

/// @nodoc
abstract mixin class $PrivateTablesStateCopyWith<$Res>  {
  factory $PrivateTablesStateCopyWith(PrivateTablesState value, $Res Function(PrivateTablesState) _then) = _$PrivateTablesStateCopyWithImpl;
@useResult
$Res call({
 List<PrivateTable> tables
});




}
/// @nodoc
class _$PrivateTablesStateCopyWithImpl<$Res>
    implements $PrivateTablesStateCopyWith<$Res> {
  _$PrivateTablesStateCopyWithImpl(this._self, this._then);

  final PrivateTablesState _self;
  final $Res Function(PrivateTablesState) _then;

/// Create a copy of PrivateTablesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tables = null,}) {
  return _then(_self.copyWith(
tables: null == tables ? _self.tables : tables // ignore: cast_nullable_to_non_nullable
as List<PrivateTable>,
  ));
}

}


/// Adds pattern-matching-related methods to [PrivateTablesState].
extension PrivateTablesStatePatterns on PrivateTablesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PrivateTablesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrivateTablesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PrivateTablesState value)  $default,){
final _that = this;
switch (_that) {
case _PrivateTablesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PrivateTablesState value)?  $default,){
final _that = this;
switch (_that) {
case _PrivateTablesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PrivateTable> tables)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrivateTablesState() when $default != null:
return $default(_that.tables);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PrivateTable> tables)  $default,) {final _that = this;
switch (_that) {
case _PrivateTablesState():
return $default(_that.tables);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PrivateTable> tables)?  $default,) {final _that = this;
switch (_that) {
case _PrivateTablesState() when $default != null:
return $default(_that.tables);case _:
  return null;

}
}

}

/// @nodoc


class _PrivateTablesState extends PrivateTablesState {
  const _PrivateTablesState({required final  List<PrivateTable> tables}): _tables = tables,super._();
  

 final  List<PrivateTable> _tables;
@override List<PrivateTable> get tables {
  if (_tables is EqualUnmodifiableListView) return _tables;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tables);
}


/// Create a copy of PrivateTablesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrivateTablesStateCopyWith<_PrivateTablesState> get copyWith => __$PrivateTablesStateCopyWithImpl<_PrivateTablesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrivateTablesState&&const DeepCollectionEquality().equals(other._tables, _tables));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tables));

@override
String toString() {
  return 'PrivateTablesState(tables: $tables)';
}


}

/// @nodoc
abstract mixin class _$PrivateTablesStateCopyWith<$Res> implements $PrivateTablesStateCopyWith<$Res> {
  factory _$PrivateTablesStateCopyWith(_PrivateTablesState value, $Res Function(_PrivateTablesState) _then) = __$PrivateTablesStateCopyWithImpl;
@override @useResult
$Res call({
 List<PrivateTable> tables
});




}
/// @nodoc
class __$PrivateTablesStateCopyWithImpl<$Res>
    implements _$PrivateTablesStateCopyWith<$Res> {
  __$PrivateTablesStateCopyWithImpl(this._self, this._then);

  final _PrivateTablesState _self;
  final $Res Function(_PrivateTablesState) _then;

/// Create a copy of PrivateTablesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tables = null,}) {
  return _then(_PrivateTablesState(
tables: null == tables ? _self._tables : tables // ignore: cast_nullable_to_non_nullable
as List<PrivateTable>,
  ));
}


}

// dart format on
