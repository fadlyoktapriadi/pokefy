abstract class FavoriteLocalDataSource {
  Future<void> savePokemon({required int id, required String pokemonJson});

  Future<void> removePokemon(int id);

  bool isFavorite(int id);

  List<String> getAllFavoriteJson();
}
