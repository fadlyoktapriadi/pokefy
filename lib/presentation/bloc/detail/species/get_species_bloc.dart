import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokefy/domain/entity/species/species_entity.dart';
import 'package:pokefy/domain/usecase/get_species_pokemon_use_case.dart';

part 'get_species_event.dart';
part 'get_species_state.dart';
part 'get_species_bloc.freezed.dart';

class GetSpeciesBloc extends Bloc<GetSpeciesEvent, GetSpeciesState> {
  final GetSpeciesPokemonUseCase _getSpeciesPokemonUseCase;

  GetSpeciesBloc(this._getSpeciesPokemonUseCase)
    : super(const GetSpeciesState.initial()) {
    on<GetSpeciesEvent>((event, emit) async {
      await event.map(
        getSpecies: (e) async => _onGetSpecies(e.id, emit),
      );
    });
  }

  Future<void> _onGetSpecies(String pokemonId, Emitter<GetSpeciesState> emit) async {
    if (pokemonId.isEmpty) {
      emit(const GetSpeciesState.error('Pokemon id is required'));
      return;
    }

    emit(const GetSpeciesState.loading());

    final result = await _getSpeciesPokemonUseCase(pokemonId);
    result.fold(
      (failure) => emit(GetSpeciesState.error(failure.message)),
      (species) => emit(GetSpeciesState.loaded(species: species)),
    );
  }
}
