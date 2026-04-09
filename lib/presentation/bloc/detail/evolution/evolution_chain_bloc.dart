import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokefy/domain/entity/evolution_chain/evolution_chain_entity.dart';
import 'package:pokefy/domain/usecase/get_evolution_chain_use_case.dart';

part 'evolution_chain_event.dart';
part 'evolution_chain_state.dart';
part 'evolution_chain_bloc.freezed.dart';

class EvolutionChainBloc extends Bloc<EvolutionChainEvent, EvolutionChainState> {
  final GetEvolutionChainUseCase _getEvolutionChainUseCase;

  EvolutionChainBloc(this._getEvolutionChainUseCase) : super(const EvolutionChainState.initial()) {
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
    result.fold(
          (failure) => emit(EvolutionChainState.error(failure.message)),
          (evolution) => emit(EvolutionChainState.loaded(evolution: evolution)),
    );
  }
}

