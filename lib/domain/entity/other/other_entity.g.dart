// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OtherEntity _$OtherEntityFromJson(Map<String, dynamic> json) => _OtherEntity(
  home: json['home'] == null
      ? null
      : HomeEntity.fromJson(json['home'] as Map<String, dynamic>),
  showdown: json['showdown'] == null
      ? null
      : SpritesEntity.fromJson(json['showdown'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OtherEntityToJson(_OtherEntity instance) =>
    <String, dynamic>{'home': instance.home, 'showdown': instance.showdown};
