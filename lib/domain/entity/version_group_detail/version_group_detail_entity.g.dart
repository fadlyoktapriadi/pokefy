// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_group_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VersionGroupDetailEntity _$VersionGroupDetailEntityFromJson(
  Map<String, dynamic> json,
) => _VersionGroupDetailEntity(
  levelLearnedAt: (json['level_learned_at'] as num?)?.toInt(),
  moveLearnMethod: json['move_learn_method'] == null
      ? null
      : SpeciesEntity.fromJson(
          json['move_learn_method'] as Map<String, dynamic>,
        ),
  order: (json['order'] as num?)?.toInt(),
  versionGroup: json['version_group'] == null
      ? null
      : SpeciesEntity.fromJson(json['version_group'] as Map<String, dynamic>),
);

Map<String, dynamic> _$VersionGroupDetailEntityToJson(
  _VersionGroupDetailEntity instance,
) => <String, dynamic>{
  'level_learned_at': instance.levelLearnedAt,
  'move_learn_method': instance.moveLearnMethod,
  'order': instance.order,
  'version_group': instance.versionGroup,
};
