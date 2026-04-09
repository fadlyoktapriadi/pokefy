import 'package:dartz/dartz.dart';
import 'package:pokefy/core/error/failure.dart';
import 'package:pokefy/domain/entity/evolution_chain/evolution_chain_entity.dart';
import 'package:pokefy/domain/repository/pokemon_repository.dart';

class GetEvolutionChainUseCase {
  final PokemonRepository repository;

  GetEvolutionChainUseCase(this.repository);

  Future<Either<Failure, EvolutionChainEntity>> call(String id) async {
    return await repository.getEvolutionChain(id);
  }
}
