import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';
import 'package:pokefy/domain/usecase/check_favorite_use_case.dart';
import 'package:pokefy/domain/usecase/get_favorites_use_case.dart';
import 'package:pokefy/domain/usecase/toggle_favorite_use_case.dart';

part 'favorite_pokemon_event.dart';
part 'favorite_pokemon_state.dart';
part 'favorite_pokemon_bloc.freezed.dart';

class FavoritePokemonBloc extends Bloc<FavoritePokemonEvent, FavoritePokemonState> {
  final ToggleFavoriteUseCase _toggleFavoriteUseCase;
  final CheckFavoriteUseCase _checkFavoriteUseCase;
  final GetFavoritesUseCase _getFavoritesUseCase;

  FavoritePokemonBloc(
      this._toggleFavoriteUseCase,
      this._checkFavoriteUseCase,
      this._getFavoritesUseCase,
      ) : super(const FavoritePokemonState.initial()) {
    on<FavoritePokemonEvent>((event, emit) async {
      await event.map(
        checkStatus: (e) async => _onCheckStatus(e.pokemonId, emit),
        toggle: (e) async => _onToggle(e.pokemon, emit),
        loadAll: (e) async => _onLoadAll(emit),
      );
    });
  }

  Future<void> _onCheckStatus(int pokemonId, Emitter<FavoritePokemonState> emit) async {
    final isFavorite = _checkFavoriteUseCase(pokemonId);
    emit(FavoritePokemonState.status(isFavorite: isFavorite));
  }

  Future<void> _onToggle(PokemonEntity pokemon, Emitter<FavoritePokemonState> emit) async {
    final id = pokemon.id;
    if (id == null) {
      emit(const FavoritePokemonState.error('Pokemon id is null'));
      return;
    }

    await _toggleFavoriteUseCase(pokemon);
    final isFavorite = _checkFavoriteUseCase(id);
    emit(FavoritePokemonState.status(isFavorite: isFavorite));
  }

  Future<void> _onLoadAll(Emitter<FavoritePokemonState> emit) async {
    emit(const FavoritePokemonState.loading());
    final list = _getFavoritesUseCase();
    emit(FavoritePokemonState.loaded(list));
  }
}