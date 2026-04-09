// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evolution_chain_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EvolutionChainEntity _$EvolutionChainEntityFromJson(
  Map<String, dynamic> json,
) => _EvolutionChainEntity(
  chain: json['chain'] == null
      ? null
      : ChainEvolutionEntity.fromJson(json['chain'] as Map<String, dynamic>),
  id: (json['id'] as num?)?.toInt(),
  url: json['url'] as String?,
);

Map<String, dynamic> _$EvolutionChainEntityToJson(
  _EvolutionChainEntity instance,
) => <String, dynamic>{
  'chain': instance.chain,
  'id': instance.id,
  'url': instance.url,
};

_ChainEvolutionEntity _$ChainEvolutionEntityFromJson(
  Map<String, dynamic> json,
) => _ChainEvolutionEntity(
  evolutionDetails: (json['evolution_details'] as List<dynamic>?)
      ?.map((e) => EvolutionDetailEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  evolvesTo: (json['evolves_to'] as List<dynamic>?)
      ?.map((e) => ChainEvolutionEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  species: json['species'] == null
      ? null
      : SpeciesEntity.fromJson(json['species'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ChainEvolutionEntityToJson(
  _ChainEvolutionEntity instance,
) => <String, dynamic>{
  'evolution_details': instance.evolutionDetails,
  'evolves_to': instance.evolvesTo,
  'species': instance.species,
};

_EvolutionDetailEntity _$EvolutionDetailEntityFromJson(
  Map<String, dynamic> json,
) => _EvolutionDetailEntity(minLevel: (json['min_level'] as num?)?.toInt());

Map<String, dynamic> _$EvolutionDetailEntityToJson(
  _EvolutionDetailEntity instance,
) => <String, dynamic>{'min_level': instance.minLevel};
