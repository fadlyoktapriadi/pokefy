part of 'evolution_chain_bloc.dart';

@freezed
abstract class EvolutionChainEvent with _$EvolutionChainEvent {
  const factory EvolutionChainEvent.getEvolutionChain({required String id}) = _GetEvolutionChain;
}
