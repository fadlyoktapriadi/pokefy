
import 'package:dartz/dartz.dart';
import 'package:pokefy/core/error/failure.dart';
import 'package:pokefy/domain/entity/species/species_entity.dart';
import 'package:pokefy/domain/repository/pokemon_repository.dart';

class GetSpeciesPokemonUseCase {
  final PokemonRepository repository;

  GetSpeciesPokemonUseCase(this.repository);

  Future<Either<Failure, SpeciesEntity>> call(String id) async {
    return await repository.getPokemonSpecies(id);
  }
}