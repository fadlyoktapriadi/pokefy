import 'dart:convert';

import 'package:pokefy/domain/data/local/favorite_local_data_source.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';
import 'package:pokefy/domain/repository/favorite_repository.dart';

class FavoriteRepositoryImpl implements FavoriteRepository {
  final FavoriteLocalDataSource localDataSource;

  FavoriteRepositoryImpl({required this.localDataSource});

  @override
  Future<void> toggleFavorite(PokemonEntity pokemon) async {
    final id = pokemon.id;
    if (id == null) return;

    if (localDataSource.isFavorite(id)) {
      await localDataSource.removePokemon(id);
      return;
    }

    final jsonString = jsonEncode(pokemon.toJson());
    await localDataSource.savePokemon(id: id, pokemonJson: jsonString);
  }

  @override
  Future<void> removeFavorite(int id) {
    return localDataSource.removePokemon(id);
  }

  @override
  bool isFavorite(int id) {
    return localDataSource.isFavorite(id);
  }

  @override
  List<PokemonEntity> getFavorites() {
    final raw = localDataSource.getAllFavoriteJson();
    return raw
        .map((item) => PokemonEntity.fromJson(
      Map<String, dynamic>.from(jsonDecode(item) as Map),
    ))
        .toList(growable: false);
  }
}
