part of 'favorite_pokemon_bloc.dart';

@freezed
class FavoritePokemonState with _$FavoritePokemonState {
  const factory FavoritePokemonState.initial() = _FavoritePokemonInitial;
  const factory FavoritePokemonState.loading() = _FavoritePokemonLoading;
  const factory FavoritePokemonState.status({required bool isFavorite}) = _FavoritePokemonStatus;
  const factory FavoritePokemonState.loaded(List<PokemonEntity> favorites) = _FavoritePokemonLoaded;
  const factory FavoritePokemonState.error(String message) = _FavoritePokemonError;
}
