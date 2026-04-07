// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stat_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StatEntity _$StatEntityFromJson(Map<String, dynamic> json) => _StatEntity(
  baseStat: (json['base_stat'] as num?)?.toInt(),
  effort: (json['effort'] as num?)?.toInt(),
  stat: json['stat'] == null
      ? null
      : SpeciesEntity.fromJson(json['stat'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StatEntityToJson(_StatEntity instance) =>
    <String, dynamic>{
      'base_stat': instance.baseStat,
      'effort': instance.effort,
      'stat': instance.stat,
    };
