
import 'package:hive/hive.dart';
import 'package:pokefy/domain/data/local/favorite_local_data_source.dart';

class FavoriteLocalDataSourceImpl implements FavoriteLocalDataSource {
  static const String boxName = 'favorite_pokemon_box';
  final Box<String> box;

  FavoriteLocalDataSourceImpl(this.box);

  @override
  Future<void> savePokemon({
    required int id,
    required String pokemonJson,
  }) async {
    await box.put(id, pokemonJson);
  }

  @override
  Future<void> removePokemon(int id) async {
    await box.delete(id);
  }

  @override
  bool isFavorite(int id) {
    return box.containsKey(id);
  }

  @override
  List<String> getAllFavoriteJson() {
    return box.values.toList(growable: false);
  }
}