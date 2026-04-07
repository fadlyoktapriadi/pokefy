// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'type_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
TypeEntity _$TypeEntityFromJson(
  Map<String, dynamic> json
) {
    return _Type.fromJson(
      json
    );
}

/// @nodoc
mixin _$TypeEntity {

@JsonKey(name: "slot") int? get slot;@JsonKey(name: "type") SpeciesEntity? get type;
/// Create a copy of TypeEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypeEntityCopyWith<TypeEntity> get copyWith => _$TypeEntityCopyWithImpl<TypeEntity>(this as TypeEntity, _$identity);

  /// Serializes this TypeEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypeEntity&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,type);

@override
String toString() {
  return 'TypeEntity(slot: $slot, type: $type)';
}


}

/// @nodoc
abstract mixin class $TypeEntityCopyWith<$Res>  {
  factory $TypeEntityCopyWith(TypeEntity value, $Res Function(TypeEntity) _then) = _$TypeEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "slot") int? slot,@JsonKey(name: "type") SpeciesEntity? type
});


$SpeciesEntityCopyWith<$Res>? get type;

}
/// @nodoc
class _$TypeEntityCopyWithImpl<$Res>
    implements $TypeEntityCopyWith<$Res> {
  _$TypeEntityCopyWithImpl(this._self, this._then);

  final TypeEntity _self;
  final $Res Function(TypeEntity) _then;

/// Create a copy of TypeEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slot = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
slot: freezed == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SpeciesEntity?,
  ));
}
/// Create a copy of TypeEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesEntityCopyWith<$Res>? get type {
    if (_self.type == null) {
    return null;
  }

  return $SpeciesEntityCopyWith<$Res>(_self.type!, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}


/// Adds pattern-matching-related methods to [TypeEntity].
extension TypeEntityPatterns on TypeEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Type value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Type() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Type value)  $default,){
final _that = this;
switch (_that) {
case _Type():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Type value)?  $default,){
final _that = this;
switch (_that) {
case _Type() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "slot")  int? slot, @JsonKey(name: "type")  SpeciesEntity? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Type() when $default != null:
return $default(_that.slot,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "slot")  int? slot, @JsonKey(name: "type")  SpeciesEntity? type)  $default,) {final _that = this;
switch (_that) {
case _Type():
return $default(_that.slot,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "slot")  int? slot, @JsonKey(name: "type")  SpeciesEntity? type)?  $default,) {final _that = this;
switch (_that) {
case _Type() when $default != null:
return $default(_that.slot,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Type implements TypeEntity {
  const _Type({@JsonKey(name: "slot") this.slot, @JsonKey(name: "type") this.type});
  factory _Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);

@override@JsonKey(name: "slot") final  int? slot;
@override@JsonKey(name: "type") final  SpeciesEntity? type;

/// Create a copy of TypeEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TypeCopyWith<_Type> get copyWith => __$TypeCopyWithImpl<_Type>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Type&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,type);

@override
String toString() {
  return 'TypeEntity(slot: $slot, type: $type)';
}


}

/// @nodoc
abstract mixin class _$TypeCopyWith<$Res> implements $TypeEntityCopyWith<$Res> {
  factory _$TypeCopyWith(_Type value, $Res Function(_Type) _then) = __$TypeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "slot") int? slot,@JsonKey(name: "type") SpeciesEntity? type
});


@override $SpeciesEntityCopyWith<$Res>? get type;

}
/// @nodoc
class __$TypeCopyWithImpl<$Res>
    implements _$TypeCopyWith<$Res> {
  __$TypeCopyWithImpl(this._self, this._then);

  final _Type _self;
  final $Res Function(_Type) _then;

/// Create a copy of TypeEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slot = freezed,Object? type = freezed,}) {
  return _then(_Type(
slot: freezed == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SpeciesEntity?,
  ));
}

/// Create a copy of TypeEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesEntityCopyWith<$Res>? get type {
    if (_self.type == null) {
    return null;
  }

  return $SpeciesEntityCopyWith<$Res>(_self.type!, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}

// dart format on
