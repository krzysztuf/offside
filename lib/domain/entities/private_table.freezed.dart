// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'private_table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PrivateTable {

 String get id; String get name; String get ownerId; List<String> get memberIds;
/// Create a copy of PrivateTable
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrivateTableCopyWith<PrivateTable> get copyWith => _$PrivateTableCopyWithImpl<PrivateTable>(this as PrivateTable, _$identity);

  /// Serializes this PrivateTable to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrivateTable&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&const DeepCollectionEquality().equals(other.memberIds, memberIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,ownerId,const DeepCollectionEquality().hash(memberIds));

@override
String toString() {
  return 'PrivateTable(id: $id, name: $name, ownerId: $ownerId, memberIds: $memberIds)';
}


}

/// @nodoc
abstract mixin class $PrivateTableCopyWith<$Res>  {
  factory $PrivateTableCopyWith(PrivateTable value, $Res Function(PrivateTable) _then) = _$PrivateTableCopyWithImpl;
@useResult
$Res call({
 String id, String name, String ownerId, List<String> memberIds
});




}
/// @nodoc
class _$PrivateTableCopyWithImpl<$Res>
    implements $PrivateTableCopyWith<$Res> {
  _$PrivateTableCopyWithImpl(this._self, this._then);

  final PrivateTable _self;
  final $Res Function(PrivateTable) _then;

/// Create a copy of PrivateTable
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? ownerId = null,Object? memberIds = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,memberIds: null == memberIds ? _self.memberIds : memberIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [PrivateTable].
extension PrivateTablePatterns on PrivateTable {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PrivateTable value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrivateTable() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PrivateTable value)  $default,){
final _that = this;
switch (_that) {
case _PrivateTable():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PrivateTable value)?  $default,){
final _that = this;
switch (_that) {
case _PrivateTable() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String ownerId,  List<String> memberIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrivateTable() when $default != null:
return $default(_that.id,_that.name,_that.ownerId,_that.memberIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String ownerId,  List<String> memberIds)  $default,) {final _that = this;
switch (_that) {
case _PrivateTable():
return $default(_that.id,_that.name,_that.ownerId,_that.memberIds);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String ownerId,  List<String> memberIds)?  $default,) {final _that = this;
switch (_that) {
case _PrivateTable() when $default != null:
return $default(_that.id,_that.name,_that.ownerId,_that.memberIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PrivateTable extends PrivateTable {
  const _PrivateTable({this.id = '', required this.name, required this.ownerId, required final  List<String> memberIds}): _memberIds = memberIds,super._();
  factory _PrivateTable.fromJson(Map<String, dynamic> json) => _$PrivateTableFromJson(json);

@override@JsonKey() final  String id;
@override final  String name;
@override final  String ownerId;
 final  List<String> _memberIds;
@override List<String> get memberIds {
  if (_memberIds is EqualUnmodifiableListView) return _memberIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_memberIds);
}


/// Create a copy of PrivateTable
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrivateTableCopyWith<_PrivateTable> get copyWith => __$PrivateTableCopyWithImpl<_PrivateTable>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PrivateTableToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrivateTable&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&const DeepCollectionEquality().equals(other._memberIds, _memberIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,ownerId,const DeepCollectionEquality().hash(_memberIds));

@override
String toString() {
  return 'PrivateTable(id: $id, name: $name, ownerId: $ownerId, memberIds: $memberIds)';
}


}

/// @nodoc
abstract mixin class _$PrivateTableCopyWith<$Res> implements $PrivateTableCopyWith<$Res> {
  factory _$PrivateTableCopyWith(_PrivateTable value, $Res Function(_PrivateTable) _then) = __$PrivateTableCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String ownerId, List<String> memberIds
});




}
/// @nodoc
class __$PrivateTableCopyWithImpl<$Res>
    implements _$PrivateTableCopyWith<$Res> {
  __$PrivateTableCopyWithImpl(this._self, this._then);

  final _PrivateTable _self;
  final $Res Function(_PrivateTable) _then;

/// Create a copy of PrivateTable
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? ownerId = null,Object? memberIds = null,}) {
  return _then(_PrivateTable(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,memberIds: null == memberIds ? _self._memberIds : memberIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
