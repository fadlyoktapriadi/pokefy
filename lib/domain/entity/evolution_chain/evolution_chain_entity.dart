
import 'package:freezed_annotation/freezed_annotation.dart';

part 'evolution_chain_entity.freezed.dart';
part 'evolution_chain_entity.g.dart';

@freezed
abstract class EvolutionChainEntity with _$EvolutionChainEntity {
  const factory EvolutionChainEntity({
    @JsonKey(name: "url")
    String? url,
  }) = _EvolutionChainEntity;

  factory EvolutionChainEntity.fromJson(Map<String, dynamic> json) => _$EvolutionChainEntityFromJson(json);
}