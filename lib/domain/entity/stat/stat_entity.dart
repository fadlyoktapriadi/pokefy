import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokefy/domain/entity/species/species_entity.dart';

part 'stat_entity.freezed.dart';
part 'stat_entity.g.dart';

@freezed
abstract class StatEntity with _$StatEntity {
  const factory StatEntity({
    @JsonKey(name: "base_stat")
    int? baseStat,
    @JsonKey(name: "effort")
    int? effort,
    @JsonKey(name: "stat")
    SpeciesEntity? stat,
  }) = _StatEntity;

  factory StatEntity.fromJson(Map<String, dynamic> json) => _$StatEntityFromJson(json);
}