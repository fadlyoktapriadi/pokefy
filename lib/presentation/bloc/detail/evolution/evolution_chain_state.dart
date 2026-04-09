part of 'evolution_chain_bloc.dart';

@freezed
class EvolutionChainState with _$EvolutionChainState {
  const factory EvolutionChainState.initial() = _EvolutionChainInitial;
  const factory EvolutionChainState.loading() = _EvolutionChainLoading;
  const factory EvolutionChainState.loaded({
    required EvolutionChainEntity evolution,
  }) = _EvolutionChainLoaded;
  const factory EvolutionChainState.error(String message) = _EvolutionChainError;
}
