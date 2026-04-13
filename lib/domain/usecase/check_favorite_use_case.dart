import 'package:pokefy/domain/repository/favorite_repository.dart';

class CheckFavoriteUseCase {
  final FavoriteRepository repository;

  CheckFavoriteUseCase(this.repository);

  bool call(int id) {
    return repository.isFavorite(id);
  }
}