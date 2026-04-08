// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'egg_groups_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EggGroupsEntity {

@JsonKey(name: "name") String? get name;@JsonKey(name: "url") String? get url;
/// Create a copy of EggGroupsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EggGroupsEntityCopyWith<EggGroupsEntity> get copyWith => _$EggGroupsEntityCopyWithImpl<EggGroupsEntity>(this as EggGroupsEntity, _$identity);

  /// Serializes this EggGroupsEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EggGroupsEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'EggGroupsEntity(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $EggGroupsEntityCopyWith<$Res>  {
  factory $EggGroupsEntityCopyWith(EggGroupsEntity value, $Res Function(EggGroupsEntity) _then) = _$EggGroupsEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "name") String? name,@JsonKey(name: "url") String? url
});




}
/// @nodoc
class _$EggGroupsEntityCopyWithImpl<$Res>
    implements $EggGroupsEntityCopyWith<$Res> {
  _$EggGroupsEntityCopyWithImpl(this._self, this._then);

  final EggGroupsEntity _self;
  final $Res Function(EggGroupsEntity) _then;

/// Create a copy of EggGroupsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? url = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EggGroupsEntity].
extension EggGroupsEntityPatterns on EggGroupsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EggGroupsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EggGroupsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EggGroupsEntity value)  $default,){
final _that = this;
switch (_that) {
case _EggGroupsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EggGroupsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EggGroupsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "name")  String? name, @JsonKey(name: "url")  String? url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EggGroupsEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "name")  String? name, @JsonKey(name: "url")  String? url)  $default,) {final _that = this;
switch (_that) {
case _EggGroupsEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "name")  String? name, @JsonKey(name: "url")  String? url)?  $default,) {final _that = this;
switch (_that) {
case _EggGroupsEntity() when $default != null:
return $default(_that.name,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EggGroupsEntity implements EggGroupsEntity {
  const _EggGroupsEntity({@JsonKey(name: "name") this.name, @JsonKey(name: "url") this.url});
  factory _EggGroupsEntity.fromJson(Map<String, dynamic> json) => _$EggGroupsEntityFromJson(json);

@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "url") final  String? url;

/// Create a copy of EggGroupsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EggGroupsEntityCopyWith<_EggGroupsEntity> get copyWith => __$EggGroupsEntityCopyWithImpl<_EggGroupsEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EggGroupsEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EggGroupsEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'EggGroupsEntity(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$EggGroupsEntityCopyWith<$Res> implements $EggGroupsEntityCopyWith<$Res> {
  factory _$EggGroupsEntityCopyWith(_EggGroupsEntity value, $Res Function(_EggGroupsEntity) _then) = __$EggGroupsEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "name") String? name,@JsonKey(name: "url") String? url
});




}
/// @nodoc
class __$EggGroupsEntityCopyWithImpl<$Res>
    implements _$EggGroupsEntityCopyWith<$Res> {
  __$EggGroupsEntityCopyWithImpl(this._self, this._then);

  final _EggGroupsEntity _self;
  final $Res Function(_EggGroupsEntity) _then;

/// Create a copy of EggGroupsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? url = freezed,}) {
  return _then(_EggGroupsEntity(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
