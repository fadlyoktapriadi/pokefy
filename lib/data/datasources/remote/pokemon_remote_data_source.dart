import 'package:pokefy/data/models/response/pokemon_list_response_dto.dart';
import 'package:pokefy/domain/entity/evolution_chain/evolution_chain_entity.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';
import 'package:pokefy/domain/entity/species/species_entity.dart';
import 'package:pokefy/domain/entity/type/type_defences_entity.dart';

abstract class PokemonRemoteDataSource {
  Future<PokemonListResponseDto> getListPokemon({
    required int offset,
    required int limit,
  });

  Future<PokemonEntity> getPokemonDetail(String name);
  Future<SpeciesEntity> getPokemonSpecies(String id);
  Future<TypeDefencesEntity> getTypeDefences(String name);
  Future<EvolutionChainEntity> getEvolutionChain(String id);
}
