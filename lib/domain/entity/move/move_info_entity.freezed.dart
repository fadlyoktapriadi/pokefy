// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'move_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MoveInfoEntity {

@JsonKey(name: 'name') String? get name;@JsonKey(name: 'url') String? get url;
/// Create a copy of MoveInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoveInfoEntityCopyWith<MoveInfoEntity> get copyWith => _$MoveInfoEntityCopyWithImpl<MoveInfoEntity>(this as MoveInfoEntity, _$identity);

  /// Serializes this MoveInfoEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoveInfoEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'MoveInfoEntity(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $MoveInfoEntityCopyWith<$Res>  {
  factory $MoveInfoEntityCopyWith(MoveInfoEntity value, $Res Function(MoveInfoEntity) _then) = _$MoveInfoEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'url') String? url
});




}
/// @nodoc
class _$MoveInfoEntityCopyWithImpl<$Res>
    implements $MoveInfoEntityCopyWith<$Res> {
  _$MoveInfoEntityCopyWithImpl(this._self, this._then);

  final MoveInfoEntity _self;
  final $Res Function(MoveInfoEntity) _then;

/// Create a copy of MoveInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? url = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MoveInfoEntity].
extension MoveInfoEntityPatterns on MoveInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MoveInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoveInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MoveInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _MoveInfoEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MoveInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MoveInfoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'url')  String? url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MoveInfoEntity() when $default != null:
return $default(_that.name,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'url')  String? url)  $default,) {final _that = this;
switch (_that) {
case _MoveInfoEntity():
return $default(_that.name,_that.url);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String? name, @JsonKey(name: 'url')  String? url)?  $default,) {final _that = this;
switch (_that) {
case _MoveInfoEntity() when $default != null:
return $default(_that.name,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MoveInfoEntity implements MoveInfoEntity {
  const _MoveInfoEntity({@JsonKey(name: 'name') this.name, @JsonKey(name: 'url') this.url});
  factory _MoveInfoEntity.fromJson(Map<String, dynamic> json) => _$MoveInfoEntityFromJson(json);

@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'url') final  String? url;

/// Create a copy of MoveInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoveInfoEntityCopyWith<_MoveInfoEntity> get copyWith => __$MoveInfoEntityCopyWithImpl<_MoveInfoEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MoveInfoEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoveInfoEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'MoveInfoEntity(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$MoveInfoEntityCopyWith<$Res> implements $MoveInfoEntityCopyWith<$Res> {
  factory _$MoveInfoEntityCopyWith(_MoveInfoEntity value, $Res Function(_MoveInfoEntity) _then) = __$MoveInfoEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'url') String? url
});




}
/// @nodoc
class __$MoveInfoEntityCopyWithImpl<$Res>
    implements _$MoveInfoEntityCopyWith<$Res> {
  __$MoveInfoEntityCopyWithImpl(this._self, this._then);

  final _MoveInfoEntity _self;
  final $Res Function(_MoveInfoEntity) _then;

/// Create a copy of MoveInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? url = freezed,}) {
  return _then(_MoveInfoEntity(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
