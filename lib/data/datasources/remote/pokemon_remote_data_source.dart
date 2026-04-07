import 'package:pokefy/data/models/response/pokemon_list_response_dto.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';

abstract class PokemonRemoteDataSource {
  Future<PokemonListResponseDto> getListPokemon();
  Future<PokemonEntity> getPokemonDetail(String name);
}