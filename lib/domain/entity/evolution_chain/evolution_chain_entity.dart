import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:pokefy/domain/entity/species/species_entity.dart';

part 'evolution_chain_entity.freezed.dart';
part 'evolution_chain_entity.g.dart';

@freezed
abstract class EvolutionChainEntity with _$EvolutionChainEntity {
  const factory EvolutionChainEntity({
    @JsonKey(name: "chain")
    ChainEvolutionEntity? chain,
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "url")
    String? url,
  }) = _EvolutionChainEntity;

  factory EvolutionChainEntity.fromJson(Map<String, dynamic> json) => _$EvolutionChainEntityFromJson(json);
}

@freezed
abstract class ChainEvolutionEntity with _$ChainEvolutionEntity {
  const factory ChainEvolutionEntity({
    @JsonKey(name: "evolution_details")
    List<EvolutionDetailEntity>? evolutionDetails,
    @JsonKey(name: "evolves_to")
    List<ChainEvolutionEntity>? evolvesTo,
    @JsonKey(name: "species")
    SpeciesEntity? species,
  }) = _ChainEvolutionEntity;

  factory ChainEvolutionEntity.fromJson(Map<String, dynamic> json) => _$ChainEvolutionEntityFromJson(json);
}

@freezed
abstract class EvolutionDetailEntity with _$EvolutionDetailEntity {
  const factory EvolutionDetailEntity({
    @JsonKey(name: "min_level")
    int? minLevel,
  }) = _EvolutionDetailEntity;

  factory EvolutionDetailEntity.fromJson(Map<String, dynamic> json) => _$EvolutionDetailEntityFromJson(json);
}