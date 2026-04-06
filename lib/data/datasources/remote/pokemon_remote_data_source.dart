
import 'package:dartz/dartz.dart';
import 'package:pokefy/core/error/failure.dart';
import 'package:pokefy/data/models/response/pokemon_list_response_dto.dart';

abstract class PokemonRemoteDataSource {
  Future<PokemonListResponseDto> getListPokemon();
}