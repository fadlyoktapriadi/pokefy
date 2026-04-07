// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonEntity {

@JsonKey(name: "abilities") List<AbilityEntity>? get abilities;@JsonKey(name: "height") int? get height;@JsonKey(name: "id") int? get id;@JsonKey(name: "moves") List<MoveEntity>? get moves;@JsonKey(name: "name") String? get name;@JsonKey(name: "species") SpeciesEntity? get species;@JsonKey(name: "sprites") SpritesEntity? get sprites;@JsonKey(name: "stats") List<StatEntity>? get stats;@JsonKey(name: "types") List<TypeEntity>? get types;@JsonKey(name: "weight") int? get weight;
/// Create a copy of PokemonEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonEntityCopyWith<PokemonEntity> get copyWith => _$PokemonEntityCopyWithImpl<PokemonEntity>(this as PokemonEntity, _$identity);

  /// Serializes this PokemonEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonEntity&&const DeepCollectionEquality().equals(other.abilities, abilities)&&(identical(other.height, height) || other.height == height)&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.moves, moves)&&(identical(other.name, name) || other.name == name)&&(identical(other.species, species) || other.species == species)&&(identical(other.sprites, sprites) || other.sprites == sprites)&&const DeepCollectionEquality().equals(other.stats, stats)&&const DeepCollectionEquality().equals(other.types, types)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(abilities),height,id,const DeepCollectionEquality().hash(moves),name,species,sprites,const DeepCollectionEquality().hash(stats),const DeepCollectionEquality().hash(types),weight);

@override
String toString() {
  return 'PokemonEntity(abilities: $abilities, height: $height, id: $id, moves: $moves, name: $name, species: $species, sprites: $sprites, stats: $stats, types: $types, weight: $weight)';
}


}

/// @nodoc
abstract mixin class $PokemonEntityCopyWith<$Res>  {
  factory $PokemonEntityCopyWith(PokemonEntity value, $Res Function(PokemonEntity) _then) = _$PokemonEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "abilities") List<AbilityEntity>? abilities,@JsonKey(name: "height") int? height,@JsonKey(name: "id") int? id,@JsonKey(name: "moves") List<MoveEntity>? moves,@JsonKey(name: "name") String? name,@JsonKey(name: "species") SpeciesEntity? species,@JsonKey(name: "sprites") SpritesEntity? sprites,@JsonKey(name: "stats") List<StatEntity>? stats,@JsonKey(name: "types") List<TypeEntity>? types,@JsonKey(name: "weight") int? weight
});


$SpeciesEntityCopyWith<$Res>? get species;$SpritesEntityCopyWith<$Res>? get sprites;

}
/// @nodoc
class _$PokemonEntityCopyWithImpl<$Res>
    implements $PokemonEntityCopyWith<$Res> {
  _$PokemonEntityCopyWithImpl(this._self, this._then);

  final PokemonEntity _self;
  final $Res Function(PokemonEntity) _then;

/// Create a copy of PokemonEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? abilities = freezed,Object? height = freezed,Object? id = freezed,Object? moves = freezed,Object? name = freezed,Object? species = freezed,Object? sprites = freezed,Object? stats = freezed,Object? types = freezed,Object? weight = freezed,}) {
  return _then(_self.copyWith(
abilities: freezed == abilities ? _self.abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<AbilityEntity>?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,moves: freezed == moves ? _self.moves : moves // ignore: cast_nullable_to_non_nullable
as List<MoveEntity>?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,species: freezed == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as SpeciesEntity?,sprites: freezed == sprites ? _self.sprites : sprites // ignore: cast_nullable_to_non_nullable
as SpritesEntity?,stats: freezed == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as List<StatEntity>?,types: freezed == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<TypeEntity>?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of PokemonEntity
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
}/// Create a copy of PokemonEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpritesEntityCopyWith<$Res>? get sprites {
    if (_self.sprites == null) {
    return null;
  }

  return $SpritesEntityCopyWith<$Res>(_self.sprites!, (value) {
    return _then(_self.copyWith(sprites: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonEntity].
extension PokemonEntityPatterns on PokemonEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonEntity value)  $default,){
final _that = this;
switch (_that) {
case _PokemonEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "abilities")  List<AbilityEntity>? abilities, @JsonKey(name: "height")  int? height, @JsonKey(name: "id")  int? id, @JsonKey(name: "moves")  List<MoveEntity>? moves, @JsonKey(name: "name")  String? name, @JsonKey(name: "species")  SpeciesEntity? species, @JsonKey(name: "sprites")  SpritesEntity? sprites, @JsonKey(name: "stats")  List<StatEntity>? stats, @JsonKey(name: "types")  List<TypeEntity>? types, @JsonKey(name: "weight")  int? weight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonEntity() when $default != null:
return $default(_that.abilities,_that.height,_that.id,_that.moves,_that.name,_that.species,_that.sprites,_that.stats,_that.types,_that.weight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "abilities")  List<AbilityEntity>? abilities, @JsonKey(name: "height")  int? height, @JsonKey(name: "id")  int? id, @JsonKey(name: "moves")  List<MoveEntity>? moves, @JsonKey(name: "name")  String? name, @JsonKey(name: "species")  SpeciesEntity? species, @JsonKey(name: "sprites")  SpritesEntity? sprites, @JsonKey(name: "stats")  List<StatEntity>? stats, @JsonKey(name: "types")  List<TypeEntity>? types, @JsonKey(name: "weight")  int? weight)  $default,) {final _that = this;
switch (_that) {
case _PokemonEntity():
return $default(_that.abilities,_that.height,_that.id,_that.moves,_that.name,_that.species,_that.sprites,_that.stats,_that.types,_that.weight);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "abilities")  List<AbilityEntity>? abilities, @JsonKey(name: "height")  int? height, @JsonKey(name: "id")  int? id, @JsonKey(name: "moves")  List<MoveEntity>? moves, @JsonKey(name: "name")  String? name, @JsonKey(name: "species")  SpeciesEntity? species, @JsonKey(name: "sprites")  SpritesEntity? sprites, @JsonKey(name: "stats")  List<StatEntity>? stats, @JsonKey(name: "types")  List<TypeEntity>? types, @JsonKey(name: "weight")  int? weight)?  $default,) {final _that = this;
switch (_that) {
case _PokemonEntity() when $default != null:
return $default(_that.abilities,_that.height,_that.id,_that.moves,_that.name,_that.species,_that.sprites,_that.stats,_that.types,_that.weight);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonEntity implements PokemonEntity {
  const _PokemonEntity({@JsonKey(name: "abilities") final  List<AbilityEntity>? abilities, @JsonKey(name: "height") this.height, @JsonKey(name: "id") this.id, @JsonKey(name: "moves") final  List<MoveEntity>? moves, @JsonKey(name: "name") this.name, @JsonKey(name: "species") this.species, @JsonKey(name: "sprites") this.sprites, @JsonKey(name: "stats") final  List<StatEntity>? stats, @JsonKey(name: "types") final  List<TypeEntity>? types, @JsonKey(name: "weight") this.weight}): _abilities = abilities,_moves = moves,_stats = stats,_types = types;
  factory _PokemonEntity.fromJson(Map<String, dynamic> json) => _$PokemonEntityFromJson(json);

 final  List<AbilityEntity>? _abilities;
@override@JsonKey(name: "abilities") List<AbilityEntity>? get abilities {
  final value = _abilities;
  if (value == null) return null;
  if (_abilities is EqualUnmodifiableListView) return _abilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "height") final  int? height;
@override@JsonKey(name: "id") final  int? id;
 final  List<MoveEntity>? _moves;
@override@JsonKey(name: "moves") List<MoveEntity>? get moves {
  final value = _moves;
  if (value == null) return null;
  if (_moves is EqualUnmodifiableListView) return _moves;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "species") final  SpeciesEntity? species;
@override@JsonKey(name: "sprites") final  SpritesEntity? sprites;
 final  List<StatEntity>? _stats;
@override@JsonKey(name: "stats") List<StatEntity>? get stats {
  final value = _stats;
  if (value == null) return null;
  if (_stats is EqualUnmodifiableListView) return _stats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<TypeEntity>? _types;
@override@JsonKey(name: "types") List<TypeEntity>? get types {
  final value = _types;
  if (value == null) return null;
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "weight") final  int? weight;

/// Create a copy of PokemonEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonEntityCopyWith<_PokemonEntity> get copyWith => __$PokemonEntityCopyWithImpl<_PokemonEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonEntity&&const DeepCollectionEquality().equals(other._abilities, _abilities)&&(identical(other.height, height) || other.height == height)&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._moves, _moves)&&(identical(other.name, name) || other.name == name)&&(identical(other.species, species) || other.species == species)&&(identical(other.sprites, sprites) || other.sprites == sprites)&&const DeepCollectionEquality().equals(other._stats, _stats)&&const DeepCollectionEquality().equals(other._types, _types)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_abilities),height,id,const DeepCollectionEquality().hash(_moves),name,species,sprites,const DeepCollectionEquality().hash(_stats),const DeepCollectionEquality().hash(_types),weight);

@override
String toString() {
  return 'PokemonEntity(abilities: $abilities, height: $height, id: $id, moves: $moves, name: $name, species: $species, sprites: $sprites, stats: $stats, types: $types, weight: $weight)';
}


}

/// @nodoc
abstract mixin class _$PokemonEntityCopyWith<$Res> implements $PokemonEntityCopyWith<$Res> {
  factory _$PokemonEntityCopyWith(_PokemonEntity value, $Res Function(_PokemonEntity) _then) = __$PokemonEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "abilities") List<AbilityEntity>? abilities,@JsonKey(name: "height") int? height,@JsonKey(name: "id") int? id,@JsonKey(name: "moves") List<MoveEntity>? moves,@JsonKey(name: "name") String? name,@JsonKey(name: "species") SpeciesEntity? species,@JsonKey(name: "sprites") SpritesEntity? sprites,@JsonKey(name: "stats") List<StatEntity>? stats,@JsonKey(name: "types") List<TypeEntity>? types,@JsonKey(name: "weight") int? weight
});


@override $SpeciesEntityCopyWith<$Res>? get species;@override $SpritesEntityCopyWith<$Res>? get sprites;

}
/// @nodoc
class __$PokemonEntityCopyWithImpl<$Res>
    implements _$PokemonEntityCopyWith<$Res> {
  __$PokemonEntityCopyWithImpl(this._self, this._then);

  final _PokemonEntity _self;
  final $Res Function(_PokemonEntity) _then;

/// Create a copy of PokemonEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? abilities = freezed,Object? height = freezed,Object? id = freezed,Object? moves = freezed,Object? name = freezed,Object? species = freezed,Object? sprites = freezed,Object? stats = freezed,Object? types = freezed,Object? weight = freezed,}) {
  return _then(_PokemonEntity(
abilities: freezed == abilities ? _self._abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<AbilityEntity>?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,moves: freezed == moves ? _self._moves : moves // ignore: cast_nullable_to_non_nullable
as List<MoveEntity>?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,species: freezed == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as SpeciesEntity?,sprites: freezed == sprites ? _self.sprites : sprites // ignore: cast_nullable_to_non_nullable
as SpritesEntity?,stats: freezed == stats ? _self._stats : stats // ignore: cast_nullable_to_non_nullable
as List<StatEntity>?,types: freezed == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<TypeEntity>?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of PokemonEntity
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
}/// Create a copy of PokemonEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpritesEntityCopyWith<$Res>? get sprites {
    if (_self.sprites == null) {
    return null;
  }

  return $SpritesEntityCopyWith<$Res>(_self.sprites!, (value) {
    return _then(_self.copyWith(sprites: value));
  });
}
}

// dart format on
