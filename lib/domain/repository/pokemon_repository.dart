import 'package:dartz/dartz.dart';
import 'package:pokefy/core/error/failure.dart';
import 'package:pokefy/domain/entity/evolution_chain/evolution_chain_entity.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';
import 'package:pokefy/domain/entity/species/species_entity.dart';
import 'package:pokefy/domain/entity/type/type_defences_entity.dart';

abstract class PokemonRepository {
  Future<Either<Failure, List<PokemonEntity>>> getListPokemon(int offset, int limit);
  Future<Either<Failure, PokemonEntity>> getPokemonDetail(String name);
  Future<Either<Failure, SpeciesEntity>> getPokemonSpecies(String id);
  Future<Either<Failure, TypeDefencesEntity>> getTypeDefences(String name);
  Future<Either<Failure, EvolutionChainEntity>> getEvolutionChain(String id);
}