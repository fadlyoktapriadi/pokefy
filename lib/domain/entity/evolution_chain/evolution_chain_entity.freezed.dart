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

@JsonKey(name: "chain") ChainEvolutionEntity? get chain;@JsonKey(name: "id") int? get id;@JsonKey(name: "url") String? get url;
/// Create a copy of EvolutionChainEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EvolutionChainEntityCopyWith<EvolutionChainEntity> get copyWith => _$EvolutionChainEntityCopyWithImpl<EvolutionChainEntity>(this as EvolutionChainEntity, _$identity);

  /// Serializes this EvolutionChainEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EvolutionChainEntity&&(identical(other.chain, chain) || other.chain == chain)&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chain,id,url);

@override
String toString() {
  return 'EvolutionChainEntity(chain: $chain, id: $id, url: $url)';
}


}

/// @nodoc
abstract mixin class $EvolutionChainEntityCopyWith<$Res>  {
  factory $EvolutionChainEntityCopyWith(EvolutionChainEntity value, $Res Function(EvolutionChainEntity) _then) = _$EvolutionChainEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "chain") ChainEvolutionEntity? chain,@JsonKey(name: "id") int? id,@JsonKey(name: "url") String? url
});


$ChainEvolutionEntityCopyWith<$Res>? get chain;

}
/// @nodoc
class _$EvolutionChainEntityCopyWithImpl<$Res>
    implements $EvolutionChainEntityCopyWith<$Res> {
  _$EvolutionChainEntityCopyWithImpl(this._self, this._then);

  final EvolutionChainEntity _self;
  final $Res Function(EvolutionChainEntity) _then;

/// Create a copy of EvolutionChainEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chain = freezed,Object? id = freezed,Object? url = freezed,}) {
  return _then(_self.copyWith(
chain: freezed == chain ? _self.chain : chain // ignore: cast_nullable_to_non_nullable
as ChainEvolutionEntity?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of EvolutionChainEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChainEvolutionEntityCopyWith<$Res>? get chain {
    if (_self.chain == null) {
    return null;
  }

  return $ChainEvolutionEntityCopyWith<$Res>(_self.chain!, (value) {
    return _then(_self.copyWith(chain: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "chain")  ChainEvolutionEntity? chain, @JsonKey(name: "id")  int? id, @JsonKey(name: "url")  String? url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EvolutionChainEntity() when $default != null:
return $default(_that.chain,_that.id,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "chain")  ChainEvolutionEntity? chain, @JsonKey(name: "id")  int? id, @JsonKey(name: "url")  String? url)  $default,) {final _that = this;
switch (_that) {
case _EvolutionChainEntity():
return $default(_that.chain,_that.id,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "chain")  ChainEvolutionEntity? chain, @JsonKey(name: "id")  int? id, @JsonKey(name: "url")  String? url)?  $default,) {final _that = this;
switch (_that) {
case _EvolutionChainEntity() when $default != null:
return $default(_that.chain,_that.id,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EvolutionChainEntity implements EvolutionChainEntity {
  const _EvolutionChainEntity({@JsonKey(name: "chain") this.chain, @JsonKey(name: "id") this.id, @JsonKey(name: "url") this.url});
  factory _EvolutionChainEntity.fromJson(Map<String, dynamic> json) => _$EvolutionChainEntityFromJson(json);

@override@JsonKey(name: "chain") final  ChainEvolutionEntity? chain;
@override@JsonKey(name: "id") final  int? id;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EvolutionChainEntity&&(identical(other.chain, chain) || other.chain == chain)&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chain,id,url);

@override
String toString() {
  return 'EvolutionChainEntity(chain: $chain, id: $id, url: $url)';
}


}

/// @nodoc
abstract mixin class _$EvolutionChainEntityCopyWith<$Res> implements $EvolutionChainEntityCopyWith<$Res> {
  factory _$EvolutionChainEntityCopyWith(_EvolutionChainEntity value, $Res Function(_EvolutionChainEntity) _then) = __$EvolutionChainEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "chain") ChainEvolutionEntity? chain,@JsonKey(name: "id") int? id,@JsonKey(name: "url") String? url
});


@override $ChainEvolutionEntityCopyWith<$Res>? get chain;

}
/// @nodoc
class __$EvolutionChainEntityCopyWithImpl<$Res>
    implements _$EvolutionChainEntityCopyWith<$Res> {
  __$EvolutionChainEntityCopyWithImpl(this._self, this._then);

  final _EvolutionChainEntity _self;
  final $Res Function(_EvolutionChainEntity) _then;

/// Create a copy of EvolutionChainEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chain = freezed,Object? id = freezed,Object? url = freezed,}) {
  return _then(_EvolutionChainEntity(
chain: freezed == chain ? _self.chain : chain // ignore: cast_nullable_to_non_nullable
as ChainEvolutionEntity?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of EvolutionChainEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChainEvolutionEntityCopyWith<$Res>? get chain {
    if (_self.chain == null) {
    return null;
  }

  return $ChainEvolutionEntityCopyWith<$Res>(_self.chain!, (value) {
    return _then(_self.copyWith(chain: value));
  });
}
}


/// @nodoc
mixin _$ChainEvolutionEntity {

@JsonKey(name: "evolution_details") List<EvolutionDetailEntity>? get evolutionDetails;@JsonKey(name: "evolves_to") List<ChainEvolutionEntity>? get evolvesTo;@JsonKey(name: "species") SpeciesEntity? get species;
/// Create a copy of ChainEvolutionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChainEvolutionEntityCopyWith<ChainEvolutionEntity> get copyWith => _$ChainEvolutionEntityCopyWithImpl<ChainEvolutionEntity>(this as ChainEvolutionEntity, _$identity);

  /// Serializes this ChainEvolutionEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChainEvolutionEntity&&const DeepCollectionEquality().equals(other.evolutionDetails, evolutionDetails)&&const DeepCollectionEquality().equals(other.evolvesTo, evolvesTo)&&(identical(other.species, species) || other.species == species));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(evolutionDetails),const DeepCollectionEquality().hash(evolvesTo),species);

@override
String toString() {
  return 'ChainEvolutionEntity(evolutionDetails: $evolutionDetails, evolvesTo: $evolvesTo, species: $species)';
}


}

/// @nodoc
abstract mixin class $ChainEvolutionEntityCopyWith<$Res>  {
  factory $ChainEvolutionEntityCopyWith(ChainEvolutionEntity value, $Res Function(ChainEvolutionEntity) _then) = _$ChainEvolutionEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "evolution_details") List<EvolutionDetailEntity>? evolutionDetails,@JsonKey(name: "evolves_to") List<ChainEvolutionEntity>? evolvesTo,@JsonKey(name: "species") SpeciesEntity? species
});


$SpeciesEntityCopyWith<$Res>? get species;

}
/// @nodoc
class _$ChainEvolutionEntityCopyWithImpl<$Res>
    implements $ChainEvolutionEntityCopyWith<$Res> {
  _$ChainEvolutionEntityCopyWithImpl(this._self, this._then);

  final ChainEvolutionEntity _self;
  final $Res Function(ChainEvolutionEntity) _then;

/// Create a copy of ChainEvolutionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? evolutionDetails = freezed,Object? evolvesTo = freezed,Object? species = freezed,}) {
  return _then(_self.copyWith(
evolutionDetails: freezed == evolutionDetails ? _self.evolutionDetails : evolutionDetails // ignore: cast_nullable_to_non_nullable
as List<EvolutionDetailEntity>?,evolvesTo: freezed == evolvesTo ? _self.evolvesTo : evolvesTo // ignore: cast_nullable_to_non_nullable
as List<ChainEvolutionEntity>?,species: freezed == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as SpeciesEntity?,
  ));
}
/// Create a copy of ChainEvolutionEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesEntityCopyWith<$Res>? get species {
    if (_self.species == null) {
    return null;
  }

  return $SpeciesEntityCopyWith<$Res>(_self.species!, (value) {
    return _then(_self.copyWith(species: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChainEvolutionEntity].
extension ChainEvolutionEntityPatterns on ChainEvolutionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChainEvolutionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChainEvolutionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChainEvolutionEntity value)  $default,){
final _that = this;
switch (_that) {
case _ChainEvolutionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChainEvolutionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ChainEvolutionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "evolution_details")  List<EvolutionDetailEntity>? evolutionDetails, @JsonKey(name: "evolves_to")  List<ChainEvolutionEntity>? evolvesTo, @JsonKey(name: "species")  SpeciesEntity? species)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChainEvolutionEntity() when $default != null:
return $default(_that.evolutionDetails,_that.evolvesTo,_that.species);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "evolution_details")  List<EvolutionDetailEntity>? evolutionDetails, @JsonKey(name: "evolves_to")  List<ChainEvolutionEntity>? evolvesTo, @JsonKey(name: "species")  SpeciesEntity? species)  $default,) {final _that = this;
switch (_that) {
case _ChainEvolutionEntity():
return $default(_that.evolutionDetails,_that.evolvesTo,_that.species);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "evolution_details")  List<EvolutionDetailEntity>? evolutionDetails, @JsonKey(name: "evolves_to")  List<ChainEvolutionEntity>? evolvesTo, @JsonKey(name: "species")  SpeciesEntity? species)?  $default,) {final _that = this;
switch (_that) {
case _ChainEvolutionEntity() when $default != null:
return $default(_that.evolutionDetails,_that.evolvesTo,_that.species);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChainEvolutionEntity implements ChainEvolutionEntity {
  const _ChainEvolutionEntity({@JsonKey(name: "evolution_details") final  List<EvolutionDetailEntity>? evolutionDetails, @JsonKey(name: "evolves_to") final  List<ChainEvolutionEntity>? evolvesTo, @JsonKey(name: "species") this.species}): _evolutionDetails = evolutionDetails,_evolvesTo = evolvesTo;
  factory _ChainEvolutionEntity.fromJson(Map<String, dynamic> json) => _$ChainEvolutionEntityFromJson(json);

 final  List<EvolutionDetailEntity>? _evolutionDetails;
@override@JsonKey(name: "evolution_details") List<EvolutionDetailEntity>? get evolutionDetails {
  final value = _evolutionDetails;
  if (value == null) return null;
  if (_evolutionDetails is EqualUnmodifiableListView) return _evolutionDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ChainEvolutionEntity>? _evolvesTo;
@override@JsonKey(name: "evolves_to") List<ChainEvolutionEntity>? get evolvesTo {
  final value = _evolvesTo;
  if (value == null) return null;
  if (_evolvesTo is EqualUnmodifiableListView) return _evolvesTo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "species") final  SpeciesEntity? species;

/// Create a copy of ChainEvolutionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChainEvolutionEntityCopyWith<_ChainEvolutionEntity> get copyWith => __$ChainEvolutionEntityCopyWithImpl<_ChainEvolutionEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChainEvolutionEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChainEvolutionEntity&&const DeepCollectionEquality().equals(other._evolutionDetails, _evolutionDetails)&&const DeepCollectionEquality().equals(other._evolvesTo, _evolvesTo)&&(identical(other.species, species) || other.species == species));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_evolutionDetails),const DeepCollectionEquality().hash(_evolvesTo),species);

@override
String toString() {
  return 'ChainEvolutionEntity(evolutionDetails: $evolutionDetails, evolvesTo: $evolvesTo, species: $species)';
}


}

/// @nodoc
abstract mixin class _$ChainEvolutionEntityCopyWith<$Res> implements $ChainEvolutionEntityCopyWith<$Res> {
  factory _$ChainEvolutionEntityCopyWith(_ChainEvolutionEntity value, $Res Function(_ChainEvolutionEntity) _then) = __$ChainEvolutionEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "evolution_details") List<EvolutionDetailEntity>? evolutionDetails,@JsonKey(name: "evolves_to") List<ChainEvolutionEntity>? evolvesTo,@JsonKey(name: "species") SpeciesEntity? species
});


@override $SpeciesEntityCopyWith<$Res>? get species;

}
/// @nodoc
class __$ChainEvolutionEntityCopyWithImpl<$Res>
    implements _$ChainEvolutionEntityCopyWith<$Res> {
  __$ChainEvolutionEntityCopyWithImpl(this._self, this._then);

  final _ChainEvolutionEntity _self;
  final $Res Function(_ChainEvolutionEntity) _then;

/// Create a copy of ChainEvolutionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? evolutionDetails = freezed,Object? evolvesTo = freezed,Object? species = freezed,}) {
  return _then(_ChainEvolutionEntity(
evolutionDetails: freezed == evolutionDetails ? _self._evolutionDetails : evolutionDetails // ignore: cast_nullable_to_non_nullable
as List<EvolutionDetailEntity>?,evolvesTo: freezed == evolvesTo ? _self._evolvesTo : evolvesTo // ignore: cast_nullable_to_non_nullable
as List<ChainEvolutionEntity>?,species: freezed == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as SpeciesEntity?,
  ));
}

/// Create a copy of ChainEvolutionEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesEntityCopyWith<$Res>? get species {
    if (_self.species == null) {
    return null;
  }

  return $SpeciesEntityCopyWith<$Res>(_self.species!, (value) {
    return _then(_self.copyWith(species: value));
  });
}
}


/// @nodoc
mixin _$EvolutionDetailEntity {

@JsonKey(name: "min_level") int? get minLevel;
/// Create a copy of EvolutionDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EvolutionDetailEntityCopyWith<EvolutionDetailEntity> get copyWith => _$EvolutionDetailEntityCopyWithImpl<EvolutionDetailEntity>(this as EvolutionDetailEntity, _$identity);

  /// Serializes this EvolutionDetailEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EvolutionDetailEntity&&(identical(other.minLevel, minLevel) || other.minLevel == minLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,minLevel);

@override
String toString() {
  return 'EvolutionDetailEntity(minLevel: $minLevel)';
}


}

/// @nodoc
abstract mixin class $EvolutionDetailEntityCopyWith<$Res>  {
  factory $EvolutionDetailEntityCopyWith(EvolutionDetailEntity value, $Res Function(EvolutionDetailEntity) _then) = _$EvolutionDetailEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "min_level") int? minLevel
});




}
/// @nodoc
class _$EvolutionDetailEntityCopyWithImpl<$Res>
    implements $EvolutionDetailEntityCopyWith<$Res> {
  _$EvolutionDetailEntityCopyWithImpl(this._self, this._then);

  final EvolutionDetailEntity _self;
  final $Res Function(EvolutionDetailEntity) _then;

/// Create a copy of EvolutionDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? minLevel = freezed,}) {
  return _then(_self.copyWith(
minLevel: freezed == minLevel ? _self.minLevel : minLevel // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [EvolutionDetailEntity].
extension EvolutionDetailEntityPatterns on EvolutionDetailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EvolutionDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EvolutionDetailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EvolutionDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _EvolutionDetailEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EvolutionDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EvolutionDetailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "min_level")  int? minLevel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EvolutionDetailEntity() when $default != null:
return $default(_that.minLevel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "min_level")  int? minLevel)  $default,) {final _that = this;
switch (_that) {
case _EvolutionDetailEntity():
return $default(_that.minLevel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "min_level")  int? minLevel)?  $default,) {final _that = this;
switch (_that) {
case _EvolutionDetailEntity() when $default != null:
return $default(_that.minLevel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EvolutionDetailEntity implements EvolutionDetailEntity {
  const _EvolutionDetailEntity({@JsonKey(name: "min_level") this.minLevel});
  factory _EvolutionDetailEntity.fromJson(Map<String, dynamic> json) => _$EvolutionDetailEntityFromJson(json);

@override@JsonKey(name: "min_level") final  int? minLevel;

/// Create a copy of EvolutionDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EvolutionDetailEntityCopyWith<_EvolutionDetailEntity> get copyWith => __$EvolutionDetailEntityCopyWithImpl<_EvolutionDetailEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EvolutionDetailEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EvolutionDetailEntity&&(identical(other.minLevel, minLevel) || other.minLevel == minLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,minLevel);

@override
String toString() {
  return 'EvolutionDetailEntity(minLevel: $minLevel)';
}


}

/// @nodoc
abstract mixin class _$EvolutionDetailEntityCopyWith<$Res> implements $EvolutionDetailEntityCopyWith<$Res> {
  factory _$EvolutionDetailEntityCopyWith(_EvolutionDetailEntity value, $Res Function(_EvolutionDetailEntity) _then) = __$EvolutionDetailEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "min_level") int? minLevel
});




}
/// @nodoc
class __$EvolutionDetailEntityCopyWithImpl<$Res>
    implements _$EvolutionDetailEntityCopyWith<$Res> {
  __$EvolutionDetailEntityCopyWithImpl(this._self, this._then);

  final _EvolutionDetailEntity _self;
  final $Res Function(_EvolutionDetailEntity) _then;

/// Create a copy of EvolutionDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? minLevel = freezed,}) {
  return _then(_EvolutionDetailEntity(
minLevel: freezed == minLevel ? _self.minLevel : minLevel // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
