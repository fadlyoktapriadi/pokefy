// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PokemonEntity _$PokemonEntityFromJson(Map<String, dynamic> json) =>
    _PokemonEntity(
      baseExperience: (json['base_experience'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      order: (json['order'] as num?)?.toInt(),
      weight: (json['weight'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PokemonEntityToJson(_PokemonEntity instance) =>
    <String, dynamic>{
      'base_experience': instance.baseExperience,
      'height': instance.height,
      'id': instance.id,
      'name': instance.name,
      'order': instance.order,
      'weight': instance.weight,
    };
