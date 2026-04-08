// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evolution_chain_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EvolutionChainEntity {

@JsonKey(name: "url") String? get url;
/// Create a copy of EvolutionChainEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EvolutionChainEntityCopyWith<EvolutionChainEntity> get copyWith => _$EvolutionChainEntityCopyWithImpl<EvolutionChainEntity>(this as EvolutionChainEntity, _$identity);

  /// Serializes this EvolutionChainEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EvolutionChainEntity&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'EvolutionChainEntity(url: $url)';
}


}

/// @nodoc
abstract mixin class $EvolutionChainEntityCopyWith<$Res>  {
  factory $EvolutionChainEntityCopyWith(EvolutionChainEntity value, $Res Function(EvolutionChainEntity) _then) = _$EvolutionChainEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "url") String? url
});




}
/// @nodoc
class _$EvolutionChainEntityCopyWithImpl<$Res>
    implements $EvolutionChainEntityCopyWith<$Res> {
  _$EvolutionChainEntityCopyWithImpl(this._self, this._then);

  final EvolutionChainEntity _self;
  final $Res Function(EvolutionChainEntity) _then;

/// Create a copy of EvolutionChainEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = freezed,}) {
  return _then(_self.copyWith(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EvolutionChainEntity].
extension EvolutionChainEntityPatterns on EvolutionChainEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EvolutionChainEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EvolutionChainEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EvolutionChainEntity value)  $default,){
final _that = this;
switch (_that) {
case _EvolutionChainEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EvolutionChainEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EvolutionChainEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "url")  String? url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EvolutionChainEntity() when $default != null:
return $default(_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "url")  String? url)  $default,) {final _that = this;
switch (_that) {
case _EvolutionChainEntity():
return $default(_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "url")  String? url)?  $default,) {final _that = this;
switch (_that) {
case _EvolutionChainEntity() when $default != null:
return $default(_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EvolutionChainEntity implements EvolutionChainEntity {
  const _EvolutionChainEntity({@JsonKey(name: "url") this.url});
  factory _EvolutionChainEntity.fromJson(Map<String, dynamic> json) => _$EvolutionChainEntityFromJson(json);

@override@JsonKey(name: "url") final  String? url;

/// Create a copy of EvolutionChainEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EvolutionChainEntityCopyWith<_EvolutionChainEntity> get copyWith => __$EvolutionChainEntityCopyWithImpl<_EvolutionChainEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EvolutionChainEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EvolutionChainEntity&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'EvolutionChainEntity(url: $url)';
}


}

/// @nodoc
abstract mixin class _$EvolutionChainEntityCopyWith<$Res> implements $EvolutionChainEntityCopyWith<$Res> {
  factory _$EvolutionChainEntityCopyWith(_EvolutionChainEntity value, $Res Function(_EvolutionChainEntity) _then) = __$EvolutionChainEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "url") String? url
});




}
/// @nodoc
class __$EvolutionChainEntityCopyWithImpl<$Res>
    implements _$EvolutionChainEntityCopyWith<$Res> {
  __$EvolutionChainEntityCopyWithImpl(this._self, this._then);

  final _EvolutionChainEntity _self;
  final $Res Function(_EvolutionChainEntity) _then;

/// Create a copy of EvolutionChainEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = freezed,}) {
  return _then(_EvolutionChainEntity(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
