
import 'package:dartz/dartz.dart';
import 'package:pokefy/core/error/failure.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';
import 'package:pokefy/domain/repository/pokemon_repository.dart';

class GetDetailPokemonUseCase {
  final PokemonRepository repository;

  GetDetailPokemonUseCase(this.repository);

  Future<Either<Failure, PokemonEntity>> call(String name) async {
    return await repository.getPokemonDetail(name);
  }
}