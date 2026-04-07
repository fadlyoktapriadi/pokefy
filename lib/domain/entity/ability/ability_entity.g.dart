// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AbilityEntity _$AbilityEntityFromJson(Map<String, dynamic> json) =>
    _AbilityEntity(
      ability: json['ability'] == null
          ? null
          : SpeciesEntity.fromJson(json['ability'] as Map<String, dynamic>),
      isHidden: json['is_hidden'] as bool?,
      slot: (json['slot'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AbilityEntityToJson(_AbilityEntity instance) =>
    <String, dynamic>{
      'ability': instance.ability,
      'is_hidden': instance.isHidden,
      'slot': instance.slot,
    };
