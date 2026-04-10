import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokefy/domain/entity/evolution_chain/evolution_chain_entity.dart';
import 'package:pokefy/domain/usecase/get_detail_pokemon_use_case.dart';
import 'package:pokefy/domain/usecase/get_evolution_chain_use_case.dart';

part 'evolution_chain_event.dart';
part 'evolution_chain_state.dart';
part 'evolution_chain_bloc.freezed.dart';

class EvolutionChainBloc extends Bloc<EvolutionChainEvent, EvolutionChainState> {
  final GetEvolutionChainUseCase _getEvolutionChainUseCase;
  final GetDetailPokemonUseCase _getDetailPokemonUseCase;

  EvolutionChainBloc(this._getEvolutionChainUseCase, this._getDetailPokemonUseCase) : super(const EvolutionChainState.initial()) {
    on<EvolutionChainEvent>((event, emit) async {
      await event.map(
        getEvolutionChain: (e) async => _onGetEvolutionChain(e.id, emit),
      );
    });
  }

  Future<void> _onGetEvolutionChain(String id, Emitter<EvolutionChainState> emit) async {
    if (id.isEmpty) {
      emit(const EvolutionChainState.error('Pokemon id is required'));
      return;
    }

    emit(const EvolutionChainState.loading());

    final result = await _getEvolutionChainUseCase(id);
    await result.fold(
          (failure) async => emit(EvolutionChainState.error(failure.message)),
          (evolution) async {
        if (evolution.chain != null) {
          final populatedChain = await _getPokemonDetails(evolution.chain!);
          emit(EvolutionChainState.loaded(evolution: evolution.copyWith(chain: populatedChain)));
        } else {
          emit(EvolutionChainState.loaded(evolution: evolution));
        }
      },
    );
  }


  Future<ChainEvolutionEntity> _getPokemonDetails(ChainEvolutionEntity evolution) async {
    if (evolution.species?.name != null) {
      final detailResult = await _getDetailPokemonUseCase(evolution.species!.name!);
      detailResult.fold(
            (failure) => null,
            (detailedPokemon) => evolution = evolution.copyWith(pokemon: detailedPokemon),
      );
    }

    if (evolution.evolvesTo != null && evolution.evolvesTo!.isNotEmpty) {
      List<ChainEvolutionEntity> updatedEvolvesTo = [];
      for (var evolve in evolution.evolvesTo!) {
        final populatedEvolve = await _getPokemonDetails(evolve);
        updatedEvolvesTo.add(populatedEvolve);
      }
      evolution = evolution.copyWith(evolvesTo: updatedEvolvesTo);
    }

    return evolution;
  }
}

