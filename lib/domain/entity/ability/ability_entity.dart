import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokefy/domain/entity/species/species_entity.dart';

part 'ability_entity.freezed.dart';
part 'ability_entity.g.dart';

@freezed
abstract class AbilityEntity with _$AbilityEntity {
  const factory AbilityEntity({
    @JsonKey(name: "ability")
    SpeciesEntity? ability,
    @JsonKey(name: "is_hidden")
    bool? isHidden,
    @JsonKey(name: "slot")
    int? slot,
  }) = _AbilityEntity;

  factory AbilityEntity.fromJson(Map<String, dynamic> json) => _$AbilityEntityFromJson(json);
}