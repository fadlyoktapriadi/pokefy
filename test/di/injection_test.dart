import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pokefy/core/networks/connectivity_service.dart';
import 'package:pokefy/core/networks/dio_client.dart';
import 'package:pokefy/di/injection.dart';
import 'package:pokefy/domain/data/local/favorite_local_data_source.dart';
import 'package:pokefy/domain/data/remote/pokemon_remote_data_source.dart';
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
import 'package:pokefy/presentation/bloc/connectivity/connectivity_cubit.dart';
import 'package:pokefy/presentation/bloc/detail/evolution/evolution_chain_bloc.dart';
import 'package:pokefy/presentation/bloc/detail/move/get_move_bloc.dart';
import 'package:pokefy/presentation/bloc/detail/species/get_species_bloc.dart';
import 'package:pokefy/presentation/bloc/detail/type_defences/type_defences_bloc.dart';
import 'package:pokefy/presentation/bloc/favorite/favorite_pokemon_bloc.dart';
import 'package:pokefy/presentation/bloc/home/get_pokemon_bloc.dart';

void main() {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();

    final path = Directory.systemTemp.createTempSync();

    const MethodChannel channel = MethodChannel('plugins.flutter.io/path_provider');
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (MethodCall methodCall) async {
      if (methodCall.method == 'getApplicationDocumentsDirectory') {
        return path.path;
      }
      return null;
    });

    await locator.reset();
  });

  group('Injection Dependency', () {
    test('should register all dependencies successfully', () async {
      await init();

      expect(locator.isRegistered<Connectivity>(), isTrue);

      expect(locator.isRegistered<GetPokemonBloc>(), isTrue);
      expect(locator.isRegistered<GetSpeciesBloc>(), isTrue);
      expect(locator.isRegistered<TypeDefencesBloc>(), isTrue);
      expect(locator.isRegistered<EvolutionChainBloc>(), isTrue);
      expect(locator.isRegistered<GetMoveBloc>(), isTrue);
      expect(locator.isRegistered<FavoritePokemonBloc>(), isTrue);

      expect(locator.isRegistered<ConnectivityCubit>(), isTrue);

      expect(locator.isRegistered<GetListPokemonUseCase>(), isTrue);
      expect(locator.isRegistered<GetDetailPokemonUseCase>(), isTrue);
      expect(locator.isRegistered<GetSpeciesPokemonUseCase>(), isTrue);
      expect(locator.isRegistered<GetTypeDefencesUseCase>(), isTrue);
      expect(locator.isRegistered<GetEvolutionChainUseCase>(), isTrue);
      expect(locator.isRegistered<GetMoveDetailUseCase>(), isTrue);
      expect(locator.isRegistered<GetFavoritesUseCase>(), isTrue);
      expect(locator.isRegistered<CheckFavoriteUseCase>(), isTrue);
      expect(locator.isRegistered<ToggleFavoriteUseCase>(), isTrue);

      expect(locator.isRegistered<PokemonRepository>(), isTrue);
      expect(locator.isRegistered<FavoriteRepository>(), isTrue);

      expect(locator.isRegistered<PokemonRemoteDataSource>(), isTrue);
      expect(locator.isRegistered<FavoriteLocalDataSource>(), isTrue);

      expect(locator.isRegistered<DioClient>(), isTrue);
      expect(locator.isRegistered<ConnectivityService>(), isTrue);
    });
  });
}
