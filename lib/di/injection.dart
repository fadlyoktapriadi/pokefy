import 'package:get_it/get_it.dart';
import 'package:pokefy/core/networks/dio_client.dart';
import 'package:pokefy/data/datasources/remote/pokemon_remote_data_source.dart';
import 'package:pokefy/data/datasources/remote/pokemon_remote_data_source_impl.dart';
import 'package:pokefy/data/repository/pokemon_repository_impl.dart';
import 'package:pokefy/domain/repository/pokemon_repository.dart';
import 'package:pokefy/domain/usecase/get_detail_pokemon_use_case.dart';
import 'package:pokefy/domain/usecase/get_list_pokemon_use_case.dart';
import 'package:pokefy/presentation/bloc/home/get_pokemon_bloc.dart';

final locator = GetIt.instance;

void init() {

  locator.registerFactory(() => GetPokemonBloc(locator(), locator()));

  locator.registerLazySingleton(() => GetListPokemonUseCase(locator()));
  locator.registerLazySingleton(() => GetDetailPokemonUseCase(locator()));

  locator.registerLazySingleton<PokemonRepository>(
    () => PokemonRepositoryImpl(pokemonRemoteDataSource: locator()),
  );

  locator.registerLazySingleton<PokemonRemoteDataSource>(
    () => PokemonRemoteDataSourceImpl(dioClient: locator()),
  );

  locator.registerLazySingleton(() => DioClient());

}