import 'package:dartz/dartz.dart';
import 'package:pokefy/core/error/failure.dart';
import 'package:pokefy/domain/entity/move/move_detail_entity.dart';
import 'package:pokefy/domain/repository/pokemon_repository.dart';

class GetMoveDetailUseCase {
  final PokemonRepository repository;

  GetMoveDetailUseCase(this.repository);

  Future<Either<Failure, MoveDetailEntity>> call(String id) async {
    return await repository.getMoveDetail(id);
  }
}