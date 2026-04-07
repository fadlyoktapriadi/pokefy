// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Type _$TypeFromJson(Map<String, dynamic> json) => _Type(
  slot: (json['slot'] as num?)?.toInt(),
  type: json['type'] == null
      ? null
      : SpeciesEntity.fromJson(json['type'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TypeToJson(_Type instance) => <String, dynamic>{
  'slot': instance.slot,
  'type': instance.type,
};
