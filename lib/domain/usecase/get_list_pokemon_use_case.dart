import 'package:dartz/dartz.dart';
import 'package:pokefy/core/error/failure.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';
import 'package:pokefy/domain/repository/pokemon_repository.dart';

class GetListPokemonUseCase {
  final PokemonRepository repository;

  GetListPokemonUseCase(this.repository);

  Future<Either<Failure, List<PokemonEntity>>> call(int offset, int limit) async {
    return await repository.getListPokemon(offset, limit);
  }
}