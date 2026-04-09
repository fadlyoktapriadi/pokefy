// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'type_defences_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TypeDefencesEntity {

@JsonKey(name: "damage_relations") DamageRelations? get damageRelations;
/// Create a copy of TypeDefencesEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypeDefencesEntityCopyWith<TypeDefencesEntity> get copyWith => _$TypeDefencesEntityCopyWithImpl<TypeDefencesEntity>(this as TypeDefencesEntity, _$identity);

  /// Serializes this TypeDefencesEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypeDefencesEntity&&(identical(other.damageRelations, damageRelations) || other.damageRelations == damageRelations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,damageRelations);

@override
String toString() {
  return 'TypeDefencesEntity(damageRelations: $damageRelations)';
}


}

/// @nodoc
abstract mixin class $TypeDefencesEntityCopyWith<$Res>  {
  factory $TypeDefencesEntityCopyWith(TypeDefencesEntity value, $Res Function(TypeDefencesEntity) _then) = _$TypeDefencesEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "damage_relations") DamageRelations? damageRelations
});


$DamageRelationsCopyWith<$Res>? get damageRelations;

}
/// @nodoc
class _$TypeDefencesEntityCopyWithImpl<$Res>
    implements $TypeDefencesEntityCopyWith<$Res> {
  _$TypeDefencesEntityCopyWithImpl(this._self, this._then);

  final TypeDefencesEntity _self;
  final $Res Function(TypeDefencesEntity) _then;

/// Create a copy of TypeDefencesEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? damageRelations = freezed,}) {
  return _then(_self.copyWith(
damageRelations: freezed == damageRelations ? _self.damageRelations : damageRelations // ignore: cast_nullable_to_non_nullable
as DamageRelations?,
  ));
}
/// Create a copy of TypeDefencesEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DamageRelationsCopyWith<$Res>? get damageRelations {
    if (_self.damageRelations == null) {
    return null;
  }

  return $DamageRelationsCopyWith<$Res>(_self.damageRelations!, (value) {
    return _then(_self.copyWith(damageRelations: value));
  });
}
}


/// Adds pattern-matching-related methods to [TypeDefencesEntity].
extension TypeDefencesEntityPatterns on TypeDefencesEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TypeDefencesEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TypeDefencesEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TypeDefencesEntity value)  $default,){
final _that = this;
switch (_that) {
case _TypeDefencesEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TypeDefencesEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TypeDefencesEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "damage_relations")  DamageRelations? damageRelations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TypeDefencesEntity() when $default != null:
return $default(_that.damageRelations);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "damage_relations")  DamageRelations? damageRelations)  $default,) {final _that = this;
switch (_that) {
case _TypeDefencesEntity():
return $default(_that.damageRelations);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "damage_relations")  DamageRelations? damageRelations)?  $default,) {final _that = this;
switch (_that) {
case _TypeDefencesEntity() when $default != null:
return $default(_that.damageRelations);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TypeDefencesEntity implements TypeDefencesEntity {
  const _TypeDefencesEntity({@JsonKey(name: "damage_relations") this.damageRelations});
  factory _TypeDefencesEntity.fromJson(Map<String, dynamic> json) => _$TypeDefencesEntityFromJson(json);

@override@JsonKey(name: "damage_relations") final  DamageRelations? damageRelations;

/// Create a copy of TypeDefencesEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TypeDefencesEntityCopyWith<_TypeDefencesEntity> get copyWith => __$TypeDefencesEntityCopyWithImpl<_TypeDefencesEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TypeDefencesEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TypeDefencesEntity&&(identical(other.damageRelations, damageRelations) || other.damageRelations == damageRelations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,damageRelations);

@override
String toString() {
  return 'TypeDefencesEntity(damageRelations: $damageRelations)';
}


}

/// @nodoc
abstract mixin class _$TypeDefencesEntityCopyWith<$Res> implements $TypeDefencesEntityCopyWith<$Res> {
  factory _$TypeDefencesEntityCopyWith(_TypeDefencesEntity value, $Res Function(_TypeDefencesEntity) _then) = __$TypeDefencesEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "damage_relations") DamageRelations? damageRelations
});


@override $DamageRelationsCopyWith<$Res>? get damageRelations;

}
/// @nodoc
class __$TypeDefencesEntityCopyWithImpl<$Res>
    implements _$TypeDefencesEntityCopyWith<$Res> {
  __$TypeDefencesEntityCopyWithImpl(this._self, this._then);

  final _TypeDefencesEntity _self;
  final $Res Function(_TypeDefencesEntity) _then;

/// Create a copy of TypeDefencesEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? damageRelations = freezed,}) {
  return _then(_TypeDefencesEntity(
damageRelations: freezed == damageRelations ? _self.damageRelations : damageRelations // ignore: cast_nullable_to_non_nullable
as DamageRelations?,
  ));
}

/// Create a copy of TypeDefencesEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DamageRelationsCopyWith<$Res>? get damageRelations {
    if (_self.damageRelations == null) {
    return null;
  }

  return $DamageRelationsCopyWith<$Res>(_self.damageRelations!, (value) {
    return _then(_self.copyWith(damageRelations: value));
  });
}
}


/// @nodoc
mixin _$DamageRelations {

@JsonKey(name: "double_damage_from") List<ItemDamageRelation>? get doubleDamageFrom;@JsonKey(name: "double_damage_to") List<ItemDamageRelation>? get doubleDamageTo;@JsonKey(name: "half_damage_from") List<ItemDamageRelation>? get halfDamageFrom;@JsonKey(name: "no_damage_from") List<ItemDamageRelation>? get noDamageFrom;
/// Create a copy of DamageRelations
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DamageRelationsCopyWith<DamageRelations> get copyWith => _$DamageRelationsCopyWithImpl<DamageRelations>(this as DamageRelations, _$identity);

  /// Serializes this DamageRelations to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DamageRelations&&const DeepCollectionEquality().equals(other.doubleDamageFrom, doubleDamageFrom)&&const DeepCollectionEquality().equals(other.doubleDamageTo, doubleDamageTo)&&const DeepCollectionEquality().equals(other.halfDamageFrom, halfDamageFrom)&&const DeepCollectionEquality().equals(other.noDamageFrom, noDamageFrom));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(doubleDamageFrom),const DeepCollectionEquality().hash(doubleDamageTo),const DeepCollectionEquality().hash(halfDamageFrom),const DeepCollectionEquality().hash(noDamageFrom));

@override
String toString() {
  return 'DamageRelations(doubleDamageFrom: $doubleDamageFrom, doubleDamageTo: $doubleDamageTo, halfDamageFrom: $halfDamageFrom, noDamageFrom: $noDamageFrom)';
}


}

/// @nodoc
abstract mixin class $DamageRelationsCopyWith<$Res>  {
  factory $DamageRelationsCopyWith(DamageRelations value, $Res Function(DamageRelations) _then) = _$DamageRelationsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "double_damage_from") List<ItemDamageRelation>? doubleDamageFrom,@JsonKey(name: "double_damage_to") List<ItemDamageRelation>? doubleDamageTo,@JsonKey(name: "half_damage_from") List<ItemDamageRelation>? halfDamageFrom,@JsonKey(name: "no_damage_from") List<ItemDamageRelation>? noDamageFrom
});




}
/// @nodoc
class _$DamageRelationsCopyWithImpl<$Res>
    implements $DamageRelationsCopyWith<$Res> {
  _$DamageRelationsCopyWithImpl(this._self, this._then);

  final DamageRelations _self;
  final $Res Function(DamageRelations) _then;

/// Create a copy of DamageRelations
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? doubleDamageFrom = freezed,Object? doubleDamageTo = freezed,Object? halfDamageFrom = freezed,Object? noDamageFrom = freezed,}) {
  return _then(_self.copyWith(
doubleDamageFrom: freezed == doubleDamageFrom ? _self.doubleDamageFrom : doubleDamageFrom // ignore: cast_nullable_to_non_nullable
as List<ItemDamageRelation>?,doubleDamageTo: freezed == doubleDamageTo ? _self.doubleDamageTo : doubleDamageTo // ignore: cast_nullable_to_non_nullable
as List<ItemDamageRelation>?,halfDamageFrom: freezed == halfDamageFrom ? _self.halfDamageFrom : halfDamageFrom // ignore: cast_nullable_to_non_nullable
as List<ItemDamageRelation>?,noDamageFrom: freezed == noDamageFrom ? _self.noDamageFrom : noDamageFrom // ignore: cast_nullable_to_non_nullable
as List<ItemDamageRelation>?,
  ));
}

}


/// Adds pattern-matching-related methods to [DamageRelations].
extension DamageRelationsPatterns on DamageRelations {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DamageRelations value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DamageRelations() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DamageRelations value)  $default,){
final _that = this;
switch (_that) {
case _DamageRelations():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DamageRelations value)?  $default,){
final _that = this;
switch (_that) {
case _DamageRelations() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "double_damage_from")  List<ItemDamageRelation>? doubleDamageFrom, @JsonKey(name: "double_damage_to")  List<ItemDamageRelation>? doubleDamageTo, @JsonKey(name: "half_damage_from")  List<ItemDamageRelation>? halfDamageFrom, @JsonKey(name: "no_damage_from")  List<ItemDamageRelation>? noDamageFrom)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DamageRelations() when $default != null:
return $default(_that.doubleDamageFrom,_that.doubleDamageTo,_that.halfDamageFrom,_that.noDamageFrom);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "double_damage_from")  List<ItemDamageRelation>? doubleDamageFrom, @JsonKey(name: "double_damage_to")  List<ItemDamageRelation>? doubleDamageTo, @JsonKey(name: "half_damage_from")  List<ItemDamageRelation>? halfDamageFrom, @JsonKey(name: "no_damage_from")  List<ItemDamageRelation>? noDamageFrom)  $default,) {final _that = this;
switch (_that) {
case _DamageRelations():
return $default(_that.doubleDamageFrom,_that.doubleDamageTo,_that.halfDamageFrom,_that.noDamageFrom);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "double_damage_from")  List<ItemDamageRelation>? doubleDamageFrom, @JsonKey(name: "double_damage_to")  List<ItemDamageRelation>? doubleDamageTo, @JsonKey(name: "half_damage_from")  List<ItemDamageRelation>? halfDamageFrom, @JsonKey(name: "no_damage_from")  List<ItemDamageRelation>? noDamageFrom)?  $default,) {final _that = this;
switch (_that) {
case _DamageRelations() when $default != null:
return $default(_that.doubleDamageFrom,_that.doubleDamageTo,_that.halfDamageFrom,_that.noDamageFrom);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DamageRelations implements DamageRelations {
  const _DamageRelations({@JsonKey(name: "double_damage_from") final  List<ItemDamageRelation>? doubleDamageFrom, @JsonKey(name: "double_damage_to") final  List<ItemDamageRelation>? doubleDamageTo, @JsonKey(name: "half_damage_from") final  List<ItemDamageRelation>? halfDamageFrom, @JsonKey(name: "no_damage_from") final  List<ItemDamageRelation>? noDamageFrom}): _doubleDamageFrom = doubleDamageFrom,_doubleDamageTo = doubleDamageTo,_halfDamageFrom = halfDamageFrom,_noDamageFrom = noDamageFrom;
  factory _DamageRelations.fromJson(Map<String, dynamic> json) => _$DamageRelationsFromJson(json);

 final  List<ItemDamageRelation>? _doubleDamageFrom;
@override@JsonKey(name: "double_damage_from") List<ItemDamageRelation>? get doubleDamageFrom {
  final value = _doubleDamageFrom;
  if (value == null) return null;
  if (_doubleDamageFrom is EqualUnmodifiableListView) return _doubleDamageFrom;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ItemDamageRelation>? _doubleDamageTo;
@override@JsonKey(name: "double_damage_to") List<ItemDamageRelation>? get doubleDamageTo {
  final value = _doubleDamageTo;
  if (value == null) return null;
  if (_doubleDamageTo is EqualUnmodifiableListView) return _doubleDamageTo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ItemDamageRelation>? _halfDamageFrom;
@override@JsonKey(name: "half_damage_from") List<ItemDamageRelation>? get halfDamageFrom {
  final value = _halfDamageFrom;
  if (value == null) return null;
  if (_halfDamageFrom is EqualUnmodifiableListView) return _halfDamageFrom;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ItemDamageRelation>? _noDamageFrom;
@override@JsonKey(name: "no_damage_from") List<ItemDamageRelation>? get noDamageFrom {
  final value = _noDamageFrom;
  if (value == null) return null;
  if (_noDamageFrom is EqualUnmodifiableListView) return _noDamageFrom;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of DamageRelations
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DamageRelationsCopyWith<_DamageRelations> get copyWith => __$DamageRelationsCopyWithImpl<_DamageRelations>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DamageRelationsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DamageRelations&&const DeepCollectionEquality().equals(other._doubleDamageFrom, _doubleDamageFrom)&&const DeepCollectionEquality().equals(other._doubleDamageTo, _doubleDamageTo)&&const DeepCollectionEquality().equals(other._halfDamageFrom, _halfDamageFrom)&&const DeepCollectionEquality().equals(other._noDamageFrom, _noDamageFrom));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_doubleDamageFrom),const DeepCollectionEquality().hash(_doubleDamageTo),const DeepCollectionEquality().hash(_halfDamageFrom),const DeepCollectionEquality().hash(_noDamageFrom));

@override
String toString() {
  return 'DamageRelations(doubleDamageFrom: $doubleDamageFrom, doubleDamageTo: $doubleDamageTo, halfDamageFrom: $halfDamageFrom, noDamageFrom: $noDamageFrom)';
}


}

/// @nodoc
abstract mixin class _$DamageRelationsCopyWith<$Res> implements $DamageRelationsCopyWith<$Res> {
  factory _$DamageRelationsCopyWith(_DamageRelations value, $Res Function(_DamageRelations) _then) = __$DamageRelationsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "double_damage_from") List<ItemDamageRelation>? doubleDamageFrom,@JsonKey(name: "double_damage_to") List<ItemDamageRelation>? doubleDamageTo,@JsonKey(name: "half_damage_from") List<ItemDamageRelation>? halfDamageFrom,@JsonKey(name: "no_damage_from") List<ItemDamageRelation>? noDamageFrom
});




}
/// @nodoc
class __$DamageRelationsCopyWithImpl<$Res>
    implements _$DamageRelationsCopyWith<$Res> {
  __$DamageRelationsCopyWithImpl(this._self, this._then);

  final _DamageRelations _self;
  final $Res Function(_DamageRelations) _then;

/// Create a copy of DamageRelations
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? doubleDamageFrom = freezed,Object? doubleDamageTo = freezed,Object? halfDamageFrom = freezed,Object? noDamageFrom = freezed,}) {
  return _then(_DamageRelations(
doubleDamageFrom: freezed == doubleDamageFrom ? _self._doubleDamageFrom : doubleDamageFrom // ignore: cast_nullable_to_non_nullable
as List<ItemDamageRelation>?,doubleDamageTo: freezed == doubleDamageTo ? _self._doubleDamageTo : doubleDamageTo // ignore: cast_nullable_to_non_nullable
as List<ItemDamageRelation>?,halfDamageFrom: freezed == halfDamageFrom ? _self._halfDamageFrom : halfDamageFrom // ignore: cast_nullable_to_non_nullable
as List<ItemDamageRelation>?,noDamageFrom: freezed == noDamageFrom ? _self._noDamageFrom : noDamageFrom // ignore: cast_nullable_to_non_nullable
as List<ItemDamageRelation>?,
  ));
}


}


/// @nodoc
mixin _$ItemDamageRelation {

@JsonKey(name: "name") String? get name;@JsonKey(name: "url") String? get url;
/// Create a copy of ItemDamageRelation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemDamageRelationCopyWith<ItemDamageRelation> get copyWith => _$ItemDamageRelationCopyWithImpl<ItemDamageRelation>(this as ItemDamageRelation, _$identity);

  /// Serializes this ItemDamageRelation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemDamageRelation&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'ItemDamageRelation(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $ItemDamageRelationCopyWith<$Res>  {
  factory $ItemDamageRelationCopyWith(ItemDamageRelation value, $Res Function(ItemDamageRelation) _then) = _$ItemDamageRelationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "name") String? name,@JsonKey(name: "url") String? url
});




}
/// @nodoc
class _$ItemDamageRelationCopyWithImpl<$Res>
    implements $ItemDamageRelationCopyWith<$Res> {
  _$ItemDamageRelationCopyWithImpl(this._self, this._then);

  final ItemDamageRelation _self;
  final $Res Function(ItemDamageRelation) _then;

/// Create a copy of ItemDamageRelation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? url = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemDamageRelation].
extension ItemDamageRelationPatterns on ItemDamageRelation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemDamageRelation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemDamageRelation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemDamageRelation value)  $default,){
final _that = this;
switch (_that) {
case _ItemDamageRelation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemDamageRelation value)?  $default,){
final _that = this;
switch (_that) {
case _ItemDamageRelation() when $default != null:
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
case _ItemDamageRelation() when $default != null:
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
case _ItemDamageRelation():
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
case _ItemDamageRelation() when $default != null:
return $default(_that.name,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemDamageRelation implements ItemDamageRelation {
  const _ItemDamageRelation({@JsonKey(name: "name") this.name, @JsonKey(name: "url") this.url});
  factory _ItemDamageRelation.fromJson(Map<String, dynamic> json) => _$ItemDamageRelationFromJson(json);

@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "url") final  String? url;

/// Create a copy of ItemDamageRelation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemDamageRelationCopyWith<_ItemDamageRelation> get copyWith => __$ItemDamageRelationCopyWithImpl<_ItemDamageRelation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemDamageRelationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemDamageRelation&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'ItemDamageRelation(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$ItemDamageRelationCopyWith<$Res> implements $ItemDamageRelationCopyWith<$Res> {
  factory _$ItemDamageRelationCopyWith(_ItemDamageRelation value, $Res Function(_ItemDamageRelation) _then) = __$ItemDamageRelationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "name") String? name,@JsonKey(name: "url") String? url
});




}
/// @nodoc
class __$ItemDamageRelationCopyWithImpl<$Res>
    implements _$ItemDamageRelationCopyWith<$Res> {
  __$ItemDamageRelationCopyWithImpl(this._self, this._then);

  final _ItemDamageRelation _self;
  final $Res Function(_ItemDamageRelation) _then;

/// Create a copy of ItemDamageRelation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? url = freezed,}) {
  return _then(_ItemDamageRelation(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
