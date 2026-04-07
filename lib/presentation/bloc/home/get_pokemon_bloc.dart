import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';
import 'package:pokefy/domain/usecase/get_detail_pokemon_use_case.dart';
import 'package:pokefy/domain/usecase/get_list_pokemon_use_case.dart';

part 'get_pokemon_event.dart';

part 'get_pokemon_state.dart';

part 'get_pokemon_bloc.freezed.dart';

class GetPokemonBloc extends Bloc<GetPokemonEvent, GetPokemonState> {
  final GetListPokemonUseCase _getListPokemonUseCase;
  final GetDetailPokemonUseCase _getDetailPokemonUseCase;

  GetPokemonBloc(this._getListPokemonUseCase, this._getDetailPokemonUseCase)
      : super(const GetPokemonState.initial()) {
    on<GetPokemonEvent>((event, emit) async {
      await event.map(
        getListPokemon: (e) async {
          await _onGetListPokemon(emit);
        },
      );
    });
  }

  Future<void> _onGetListPokemon(Emitter<GetPokemonState> emit) async {
    emit(const GetPokemonState.loading());

    final result = await _getListPokemonUseCase();

    await result.fold(
          (failure) async {
        emit(GetPokemonState.error(failure.message));
      },
          (listPokemon) async {
        final detailedPokemonResult = await Future.wait(
          listPokemon.map(
                (pokemon) => _getDetailPokemonUseCase(pokemon.name ?? ""),
          ),
        );

        final allDetails = <PokemonEntity>[];
        for (final detailResult in detailedPokemonResult) {
          detailResult.fold(
                (failure) {},
                (pokemonDetail) => allDetails.add(pokemonDetail),
          );
        }

        emit(GetPokemonState.loaded(allDetails));
      },
    );
  }


}
