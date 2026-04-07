// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ability_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AbilityEntity {

@JsonKey(name: "ability") SpeciesEntity? get ability;@JsonKey(name: "is_hidden") bool? get isHidden;@JsonKey(name: "slot") int? get slot;
/// Create a copy of AbilityEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AbilityEntityCopyWith<AbilityEntity> get copyWith => _$AbilityEntityCopyWithImpl<AbilityEntity>(this as AbilityEntity, _$identity);

  /// Serializes this AbilityEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AbilityEntity&&(identical(other.ability, ability) || other.ability == ability)&&(identical(other.isHidden, isHidden) || other.isHidden == isHidden)&&(identical(other.slot, slot) || other.slot == slot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ability,isHidden,slot);

@override
String toString() {
  return 'AbilityEntity(ability: $ability, isHidden: $isHidden, slot: $slot)';
}


}

/// @nodoc
abstract mixin class $AbilityEntityCopyWith<$Res>  {
  factory $AbilityEntityCopyWith(AbilityEntity value, $Res Function(AbilityEntity) _then) = _$AbilityEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "ability") SpeciesEntity? ability,@JsonKey(name: "is_hidden") bool? isHidden,@JsonKey(name: "slot") int? slot
});


$SpeciesEntityCopyWith<$Res>? get ability;

}
/// @nodoc
class _$AbilityEntityCopyWithImpl<$Res>
    implements $AbilityEntityCopyWith<$Res> {
  _$AbilityEntityCopyWithImpl(this._self, this._then);

  final AbilityEntity _self;
  final $Res Function(AbilityEntity) _then;

/// Create a copy of AbilityEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ability = freezed,Object? isHidden = freezed,Object? slot = freezed,}) {
  return _then(_self.copyWith(
ability: freezed == ability ? _self.ability : ability // ignore: cast_nullable_to_non_nullable
as SpeciesEntity?,isHidden: freezed == isHidden ? _self.isHidden : isHidden // ignore: cast_nullable_to_non_nullable
as bool?,slot: freezed == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of AbilityEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesEntityCopyWith<$Res>? get ability {
    if (_self.ability == null) {
    return null;
  }

  return $SpeciesEntityCopyWith<$Res>(_self.ability!, (value) {
    return _then(_self.copyWith(ability: value));
  });
}
}


/// Adds pattern-matching-related methods to [AbilityEntity].
extension AbilityEntityPatterns on AbilityEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AbilityEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AbilityEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AbilityEntity value)  $default,){
final _that = this;
switch (_that) {
case _AbilityEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AbilityEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AbilityEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "ability")  SpeciesEntity? ability, @JsonKey(name: "is_hidden")  bool? isHidden, @JsonKey(name: "slot")  int? slot)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AbilityEntity() when $default != null:
return $default(_that.ability,_that.isHidden,_that.slot);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "ability")  SpeciesEntity? ability, @JsonKey(name: "is_hidden")  bool? isHidden, @JsonKey(name: "slot")  int? slot)  $default,) {final _that = this;
switch (_that) {
case _AbilityEntity():
return $default(_that.ability,_that.isHidden,_that.slot);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "ability")  SpeciesEntity? ability, @JsonKey(name: "is_hidden")  bool? isHidden, @JsonKey(name: "slot")  int? slot)?  $default,) {final _that = this;
switch (_that) {
case _AbilityEntity() when $default != null:
return $default(_that.ability,_that.isHidden,_that.slot);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AbilityEntity implements AbilityEntity {
  const _AbilityEntity({@JsonKey(name: "ability") this.ability, @JsonKey(name: "is_hidden") this.isHidden, @JsonKey(name: "slot") this.slot});
  factory _AbilityEntity.fromJson(Map<String, dynamic> json) => _$AbilityEntityFromJson(json);

@override@JsonKey(name: "ability") final  SpeciesEntity? ability;
@override@JsonKey(name: "is_hidden") final  bool? isHidden;
@override@JsonKey(name: "slot") final  int? slot;

/// Create a copy of AbilityEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AbilityEntityCopyWith<_AbilityEntity> get copyWith => __$AbilityEntityCopyWithImpl<_AbilityEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AbilityEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AbilityEntity&&(identical(other.ability, ability) || other.ability == ability)&&(identical(other.isHidden, isHidden) || other.isHidden == isHidden)&&(identical(other.slot, slot) || other.slot == slot));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ability,isHidden,slot);

@override
String toString() {
  return 'AbilityEntity(ability: $ability, isHidden: $isHidden, slot: $slot)';
}


}

/// @nodoc
abstract mixin class _$AbilityEntityCopyWith<$Res> implements $AbilityEntityCopyWith<$Res> {
  factory _$AbilityEntityCopyWith(_AbilityEntity value, $Res Function(_AbilityEntity) _then) = __$AbilityEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "ability") SpeciesEntity? ability,@JsonKey(name: "is_hidden") bool? isHidden,@JsonKey(name: "slot") int? slot
});


@override $SpeciesEntityCopyWith<$Res>? get ability;

}
/// @nodoc
class __$AbilityEntityCopyWithImpl<$Res>
    implements _$AbilityEntityCopyWith<$Res> {
  __$AbilityEntityCopyWithImpl(this._self, this._then);

  final _AbilityEntity _self;
  final $Res Function(_AbilityEntity) _then;

/// Create a copy of AbilityEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ability = freezed,Object? isHidden = freezed,Object? slot = freezed,}) {
  return _then(_AbilityEntity(
ability: freezed == ability ? _self.ability : ability // ignore: cast_nullable_to_non_nullable
as SpeciesEntity?,isHidden: freezed == isHidden ? _self.isHidden : isHidden // ignore: cast_nullable_to_non_nullable
as bool?,slot: freezed == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of AbilityEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesEntityCopyWith<$Res>? get ability {
    if (_self.ability == null) {
    return null;
  }

  return $SpeciesEntityCopyWith<$Res>(_self.ability!, (value) {
    return _then(_self.copyWith(ability: value));
  });
}
}

// dart format on
