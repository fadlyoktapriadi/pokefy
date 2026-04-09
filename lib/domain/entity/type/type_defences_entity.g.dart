// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_defences_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TypeDefencesEntity _$TypeDefencesEntityFromJson(Map<String, dynamic> json) =>
    _TypeDefencesEntity(
      damageRelations: json['damage_relations'] == null
          ? null
          : DamageRelations.fromJson(
              json['damage_relations'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$TypeDefencesEntityToJson(_TypeDefencesEntity instance) =>
    <String, dynamic>{'damage_relations': instance.damageRelations};

_DamageRelations _$DamageRelationsFromJson(Map<String, dynamic> json) =>
    _DamageRelations(
      doubleDamageFrom: (json['double_damage_from'] as List<dynamic>?)
          ?.map((e) => ItemDamageRelation.fromJson(e as Map<String, dynamic>))
          .toList(),
      doubleDamageTo: (json['double_damage_to'] as List<dynamic>?)
          ?.map((e) => ItemDamageRelation.fromJson(e as Map<String, dynamic>))
          .toList(),
      halfDamageFrom: (json['half_damage_from'] as List<dynamic>?)
          ?.map((e) => ItemDamageRelation.fromJson(e as Map<String, dynamic>))
          .toList(),
      noDamageFrom: (json['no_damage_from'] as List<dynamic>?)
          ?.map((e) => ItemDamageRelation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DamageRelationsToJson(_DamageRelations instance) =>
    <String, dynamic>{
      'double_damage_from': instance.doubleDamageFrom,
      'double_damage_to': instance.doubleDamageTo,
      'half_damage_from': instance.halfDamageFrom,
      'no_damage_from': instance.noDamageFrom,
    };

_ItemDamageRelation _$ItemDamageRelationFromJson(Map<String, dynamic> json) =>
    _ItemDamageRelation(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$ItemDamageRelationToJson(_ItemDamageRelation instance) =>
    <String, dynamic>{'name': instance.name, 'url': instance.url};
