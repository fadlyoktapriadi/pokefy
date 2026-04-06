import 'package:dartz/dartz.dart';
import 'package:pokefy/core/error/failure.dart';
import 'package:pokefy/data/datasources/remote/pokemon_remote_data_source.dart';
import 'package:pokefy/domain/entity/pokemon_entity.dart';
import 'package:pokefy/domain/repository/pokemon_repository.dart';

class PokemonRepositoryImpl extends PokemonRepository {
  final PokemonRemoteDataSource pokemonRemoteDataSource;

  PokemonRepositoryImpl({required this.pokemonRemoteDataSource});

    @override
    Future<Either<Failure, List<PokemonEntity>>> getListPokemon() async {
      try {
        final result = await pokemonRemoteDataSource.getListPokemon();

        final List<PokemonEntity> pokemonList = result.results
            .map((item) => PokemonEntity(name: item.name))
            .toList();

        return Right(pokemonList);
      } catch (e) {
        return Left(ServerFailure(message: e.toString()));
      }
    }

}