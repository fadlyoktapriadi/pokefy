import 'package:pokefy/data/models/response/pokemon_list_response_dto.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';
import 'package:pokefy/domain/entity/species/species_entity.dart';

abstract class PokemonRemoteDataSource {
  Future<PokemonListResponseDto> getListPokemon({
    required int offset,
    required int limit,
  });

  Future<PokemonEntity> getPokemonDetail(String name);

  Future<SpeciesEntity> getPokemonSpecies(String id);
}
