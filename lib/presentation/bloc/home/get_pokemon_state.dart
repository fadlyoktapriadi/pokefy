part of 'get_pokemon_bloc.dart';

@freezed
class GetPokemonState with _$GetPokemonState {
  const factory GetPokemonState.initial() = _GetPokemonInitial;
  const factory GetPokemonState.loading() = _GetPokemonLoading;
  const factory GetPokemonState.loaded(List<PokemonEntity> listPokemon) = _GetPokemonLoaded;
  const factory GetPokemonState.error(String message) = _GetPokemonError;
}