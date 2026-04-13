import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pokefy/core/networks/dio_client.dart';
import 'package:pokefy/data/datasources/local/favorite_local_data_source_impl.dart';
import 'package:pokefy/data/repository/favorite_repository_impl.dart';
import 'package:pokefy/domain/data/local/favorite_local_data_source.dart';
import 'package:pokefy/domain/data/remote/pokemon_remote_data_source.dart';
import 'package:pokefy/data/datasources/remote/pokemon_remote_data_source_impl.dart';
import 'package:pokefy/data/repository/pokemon_repository_impl.dart';
import 'package:pokefy/domain/repository/favorite_repository.dart';
import 'package:pokefy/domain/repository/pokemon_repository.dart';
import 'package:pokefy/domain/usecase/check_favorite_use_case.dart';
import 'package:pokefy/domain/usecase/get_detail_pokemon_use_case.dart';
import 'package:pokefy/domain/usecase/get_evolution_chain_use_case.dart';
import 'package:pokefy/domain/usecase/get_favorites_use_case.dart';
import 'package:pokefy/domain/usecase/get_list_pokemon_use_case.dart';
import 'package:pokefy/domain/usecase/get_move_detail_use_case.dart';
import 'package:pokefy/domain/usecase/get_species_pokemon_use_case.dart';
import 'package:pokefy/domain/usecase/get_type_defences_use_case.dart';
import 'package:pokefy/domain/usecase/toggle_favorite_use_case.dart';
import 'package:pokefy/presentation/bloc/detail/evolution/evolution_chain_bloc.dart';
import 'package:pokefy/presentation/bloc/detail/species/get_species_bloc.dart';
import 'package:pokefy/presentation/bloc/detail/type_defences/type_defences_bloc.dart';
import 'package:pokefy/presentation/bloc/detail/move/get_move_bloc.dart';
import 'package:pokefy/presentation/bloc/favorite/favorite_pokemon_bloc.dart';
import 'package:pokefy/presentation/bloc/home/get_pokemon_bloc.dart';

final locator = GetIt.instance;

Future<void> init() async {

  // External
  await Hive.initFlutter();
  final favoriteBox = await Hive.openBox<String>(
    FavoriteLocalDataSourceImpl.boxName
  );

  // Bloc
  locator.registerFactory(() => GetPokemonBloc(locator(), locator()));
  locator.registerFactory(() => GetSpeciesBloc(locator()));
  locator.registerFactory(() => TypeDefencesBloc(locator()));
  locator.registerFactory(() => EvolutionChainBloc(locator(), locator()));
  locator.registerFactory(() => GetMoveBloc(locator()));
  locator.registerFactory(() => FavoritePokemonBloc(locator(), locator(), locator()));

  // UseCase
  locator.registerLazySingleton(() => GetListPokemonUseCase(locator()));
  locator.registerLazySingleton(() => GetDetailPokemonUseCase(locator()));
  locator.registerLazySingleton(() => GetSpeciesPokemonUseCase(locator()));
  locator.registerLazySingleton(() => GetTypeDefencesUseCase(locator()));
  locator.registerLazySingleton(() => GetEvolutionChainUseCase(locator()));
  locator.registerLazySingleton(() => GetMoveDetailUseCase(locator()));
  locator.registerLazySingleton(() => GetFavoritesUseCase(locator()));
  locator.registerLazySingleton(() => CheckFavoriteUseCase(locator()));
  locator.registerLazySingleton(() => ToggleFavoriteUseCase(locator()));

  // Repository
  locator.registerLazySingleton<PokemonRepository>(
    () => PokemonRepositoryImpl(pokemonRemoteDataSource: locator()),
  );
  locator.registerLazySingleton<FavoriteRepository>(
    () => FavoriteRepositoryImpl(localDataSource: locator()),
  );

  // DataSource
  locator.registerLazySingleton<PokemonRemoteDataSource>(
    () => PokemonRemoteDataSourceImpl(dioClient: locator()),
  );
  locator.registerLazySingleton<FavoriteLocalDataSource>(
        () => FavoriteLocalDataSourceImpl(favoriteBox),
  );

  // Core
  locator.registerLazySingleton(() => DioClient());

}