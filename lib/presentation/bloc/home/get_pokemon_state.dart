part of 'get_pokemon_bloc.dart';

@freezed
class GetPokemonState with _$GetPokemonState {
  const factory GetPokemonState.initial() = _GetPokemonInitial;
  const factory GetPokemonState.loading() = _GetPokemonLoading;
  const factory GetPokemonState.loaded({
    required List<PokemonEntity> listPokemon,
    required bool hasReachedMax,
    @Default(false) bool isLoadingMore,
  }) = _GetPokemonLoaded;
  const factory GetPokemonState.error(String message) = _GetPokemonError;
}