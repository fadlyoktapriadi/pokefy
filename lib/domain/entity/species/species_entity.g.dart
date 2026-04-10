// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpeciesEntity _$SpeciesEntityFromJson(Map<String, dynamic> json) =>
    _SpeciesEntity(
      eggGroups: (json['egg_groups'] as List<dynamic>?)
          ?.map((e) => EggGroupsEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      evolutionChain: json['evolution_chain'] == null
          ? null
          : EvolutionChainEntity.fromJson(
              json['evolution_chain'] as Map<String, dynamic>,
            ),
      genderRate: (json['gender_rate'] as num?)?.toInt(),
      habitat: json['habitat'] == null
          ? null
          : HabitatEntity.fromJson(json['habitat'] as Map<String, dynamic>),
      hatchCounter: (json['hatch_counter'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$SpeciesEntityToJson(_SpeciesEntity instance) =>
    <String, dynamic>{
      'egg_groups': instance.eggGroups,
      'evolution_chain': instance.evolutionChain,
      'gender_rate': instance.genderRate,
      'habitat': instance.habitat,
      'hatch_counter': instance.hatchCounter,
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
    };
