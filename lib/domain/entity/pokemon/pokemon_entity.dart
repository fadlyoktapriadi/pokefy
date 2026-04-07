import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokefy/domain/entity/ability/ability_entity.dart';
import 'package:pokefy/domain/entity/move/move_entity.dart';
import 'package:pokefy/domain/entity/species/species_entity.dart';
import 'package:pokefy/domain/entity/spirites/sprites_entity.dart';
import 'package:pokefy/domain/entity/stat/stat_entity.dart';
import 'package:pokefy/domain/entity/type/type_entity.dart';

part 'pokemon_entity.freezed.dart';
part 'pokemon_entity.g.dart';

@freezed
abstract class PokemonEntity with _$PokemonEntity {
  const factory PokemonEntity({
    @JsonKey(name: "abilities")
    List<AbilityEntity>? abilities,
    @JsonKey(name: "height")
    int? height,
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "moves")
    List<MoveEntity>? moves,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "species")
    SpeciesEntity? species,
    @JsonKey(name: "sprites")
    SpritesEntity? sprites,
    @JsonKey(name: "stats")
    List<StatEntity>? stats,
    @JsonKey(name: "types")
    List<TypeEntity>? types,
    @JsonKey(name: "weight")
    int? weight,
  }) = _PokemonEntity;

  factory PokemonEntity.fromJson(Map<String, dynamic> json) => _$PokemonEntityFromJson(json);
}
