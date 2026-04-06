part of 'get_pokemon_bloc.dart';

@freezed
class GetPokemonEvent with _$GetPokemonEvent {
  const factory GetPokemonEvent.getListPokemon() = _GetListPokemonEvent;
}
