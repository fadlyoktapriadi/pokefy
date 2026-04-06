import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokefy/domain/entity/pokemon_entity.dart';
import 'package:pokefy/domain/usecase/get_list_pokemon_use_case.dart';

part 'get_pokemon_event.dart';

part 'get_pokemon_state.dart';

part 'get_pokemon_bloc.freezed.dart';

class GetPokemonBloc extends Bloc<GetPokemonEvent, GetPokemonState> {
  final GetListPokemonUseCase _getListPokemonUseCase;

  GetPokemonBloc(this._getListPokemonUseCase) : super(const GetPokemonState.initial()) {
    on<GetPokemonEvent>((event, emit) async {
      await event.map(
        getListPokemon: (e) async {
          await event.map(getListPokemon: (e) => _onGetListPokemon(emit));
        },
      );
    });
  }

  Future<void> _onGetListPokemon(Emitter<GetPokemonState> emit) async {
    emit(const GetPokemonState.loading());

    final result = await _getListPokemonUseCase();

    result.fold(
      (failure) => emit(GetPokemonState.error(failure.message)),
      (listPokemon) => emit(GetPokemonState.loaded(listPokemon)),
    );
  }
}
