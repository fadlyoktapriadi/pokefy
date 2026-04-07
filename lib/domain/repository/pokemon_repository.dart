import 'package:dartz/dartz.dart';
import 'package:pokefy/core/error/failure.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';

abstract class PokemonRepository {
  Future<Either<Failure, List<PokemonEntity>>> getListPokemon();
  Future<Either<Failure, PokemonEntity>> getPokemonDetail(String name);
}