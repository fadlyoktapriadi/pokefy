import 'package:freezed_annotation/freezed_annotation.dart';

part 'type_defences_entity.freezed.dart';
part 'type_defences_entity.g.dart';

@freezed
abstract class TypeDefencesEntity with _$TypeDefencesEntity {
  const factory TypeDefencesEntity({
    @JsonKey(name: "damage_relations")
    DamageRelations? damageRelations,
  }) = _TypeDefencesEntity;

  factory TypeDefencesEntity.fromJson(Map<String, dynamic> json) => _$TypeDefencesEntityFromJson(json);
}
@freezed
abstract class DamageRelations with _$DamageRelations {
  const factory DamageRelations({
    @JsonKey(name: "double_damage_from")
    List<ItemDamageRelation>? doubleDamageFrom,
    @JsonKey(name: "double_damage_to")
    List<ItemDamageRelation>? doubleDamageTo,
    @JsonKey(name: "half_damage_from")
    List<ItemDamageRelation>? halfDamageFrom,
    @JsonKey(name: "no_damage_from")
    List<ItemDamageRelation>? noDamageFrom,
  }) = _DamageRelations;

  factory DamageRelations.fromJson(Map<String, dynamic> json) => _$DamageRelationsFromJson(json);
}

@freezed
abstract class ItemDamageRelation with _$ItemDamageRelation {
  const factory ItemDamageRelation({
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "url")
    String? url,
  }) = _ItemDamageRelation;

  factory ItemDamageRelation.fromJson(Map<String, dynamic> json) => _$ItemDamageRelationFromJson(json);
}

