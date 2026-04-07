// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PokemonEntity _$PokemonEntityFromJson(Map<String, dynamic> json) =>
    _PokemonEntity(
      abilities: (json['abilities'] as List<dynamic>?)
          ?.map((e) => AbilityEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      height: (json['height'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      moves: (json['moves'] as List<dynamic>?)
          ?.map((e) => MoveEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      species: json['species'] == null
          ? null
          : SpeciesEntity.fromJson(json['species'] as Map<String, dynamic>),
      sprites: json['sprites'] == null
          ? null
          : SpritesEntity.fromJson(json['sprites'] as Map<String, dynamic>),
      stats: (json['stats'] as List<dynamic>?)
          ?.map((e) => StatEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>?)
          ?.map((e) => TypeEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      weight: (json['weight'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PokemonEntityToJson(_PokemonEntity instance) =>
    <String, dynamic>{
      'abilities': instance.abilities,
      'height': instance.height,
      'id': instance.id,
      'moves': instance.moves,
      'name': instance.name,
      'species': instance.species,
      'sprites': instance.sprites,
      'stats': instance.stats,
      'types': instance.types,
      'weight': instance.weight,
    };
