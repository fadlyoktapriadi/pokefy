import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:pokefy/domain/entity/egg_groups/egg_groups_entity.dart';
import 'package:pokefy/domain/entity/evolution_chain/evolution_chain_entity.dart';
import 'package:pokefy/domain/entity/habitat/habitat_entity.dart';

part 'species_entity.freezed.dart';
part 'species_entity.g.dart';

@freezed
abstract class SpeciesEntity with _$SpeciesEntity {
  const factory SpeciesEntity({
    @JsonKey(name: "egg_groups")
    List<EggGroupsEntity>? eggGroups,
    @JsonKey(name: "evolution_chain")
    EvolutionChainEntity? evolutionChain,
    @JsonKey(name: "gender_rate")
    int? genderRate,
    @JsonKey(name: "habitat")
    HabitatEntity? habitat,
    @JsonKey(name: "hatch_counter")
    int? hatchCounter,
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "url")
    String? url,
  }) = _SpeciesEntity;

  factory SpeciesEntity.fromJson(Map<String, dynamic> json) => _$SpeciesEntityFromJson(json);
}
