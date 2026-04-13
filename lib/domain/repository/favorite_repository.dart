import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';

abstract class FavoriteRepository {
  Future<void> toggleFavorite(PokemonEntity pokemon);
  Future<void> removeFavorite(int id);
  bool isFavorite(int id);
  List<PokemonEntity> getFavorites();
}