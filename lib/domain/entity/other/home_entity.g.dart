// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeEntity _$HomeEntityFromJson(Map<String, dynamic> json) => _HomeEntity(
  frontDefault: json['front_default'] as String?,
  frontFemale: json['front_female'] as String?,
  frontShiny: json['front_shiny'] as String?,
  frontShinyFemale: json['front_shiny_female'] as String?,
);

Map<String, dynamic> _$HomeEntityToJson(_HomeEntity instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
    };
