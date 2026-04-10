// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MoveDetailEntity _$MoveDetailEntityFromJson(Map<String, dynamic> json) =>
    _MoveDetailEntity(
      accuracy: (json['accuracy'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      damageClass: json['damage_class'] == null
          ? null
          : MoveDamageClassEntity.fromJson(
              json['damage_class'] as Map<String, dynamic>,
            ),
      power: (json['power'] as num?)?.toInt(),
      pp: (json['pp'] as num?)?.toInt(),
      priority: (json['priority'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MoveDetailEntityToJson(_MoveDetailEntity instance) =>
    <String, dynamic>{
      'accuracy': instance.accuracy,
      'id': instance.id,
      'name': instance.name,
      'damage_class': instance.damageClass,
      'power': instance.power,
      'pp': instance.pp,
      'priority': instance.priority,
    };

_MoveDamageClassEntity _$MoveDamageClassEntityFromJson(
  Map<String, dynamic> json,
) => _MoveDamageClassEntity(
  name: json['name'] as String?,
  url: json['url'] as String?,
);

Map<String, dynamic> _$MoveDamageClassEntityToJson(
  _MoveDamageClassEntity instance,
) => <String, dynamic>{'name': instance.name, 'url': instance.url};
