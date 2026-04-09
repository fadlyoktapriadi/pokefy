import 'package:dartz/dartz.dart';
import 'package:pokefy/core/error/failure.dart';
import 'package:pokefy/domain/entity/type/type_defences_entity.dart';
import 'package:pokefy/domain/repository/pokemon_repository.dart';

class GetTypeDefencesUseCase {
  final PokemonRepository repository;

  GetTypeDefencesUseCase(this.repository);

  Future<Either<Failure, TypeDefencesEntity>> call(String name) async {
    return await repository.getTypeDefences(name);
  }
}