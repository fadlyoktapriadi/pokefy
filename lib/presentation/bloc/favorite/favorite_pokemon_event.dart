part of 'favorite_pokemon_bloc.dart';

@freezed
class FavoritePokemonEvent with _$FavoritePokemonEvent {
  const factory FavoritePokemonEvent.checkStatus({required int pokemonId}) = _CheckStatus;
  const factory FavoritePokemonEvent.toggle({required PokemonEntity pokemon}) = _ToggleFavorite;
  const factory FavoritePokemonEvent.loadAll() = _LoadAllFavorites;
}
