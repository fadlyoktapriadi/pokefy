// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MoveEntity _$MoveEntityFromJson(Map<String, dynamic> json) => _MoveEntity(
  move: json['move'] == null
      ? null
      : SpeciesEntity.fromJson(json['move'] as Map<String, dynamic>),
  versionGroupDetails: (json['version_group_details'] as List<dynamic>?)
      ?.map((e) => VersionGroupDetailEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MoveEntityToJson(_MoveEntity instance) =>
    <String, dynamic>{
      'move': instance.move,
      'version_group_details': instance.versionGroupDetails,
    };
