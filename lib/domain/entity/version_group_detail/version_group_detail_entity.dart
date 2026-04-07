import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokefy/domain/entity/species/species_entity.dart';

part 'version_group_detail_entity.freezed.dart';
part 'version_group_detail_entity.g.dart';

@freezed
abstract class VersionGroupDetailEntity with _$VersionGroupDetailEntity {
  const factory VersionGroupDetailEntity({
    @JsonKey(name: "level_learned_at")
    int? levelLearnedAt,
    @JsonKey(name: "move_learn_method")
    SpeciesEntity? moveLearnMethod,
    @JsonKey(name: "order")
    int? order,
    @JsonKey(name: "version_group")
    SpeciesEntity? versionGroup,
  }) = _VersionGroupDetailEntity;

  factory VersionGroupDetailEntity.fromJson(Map<String, dynamic> json) => _$VersionGroupDetailEntityFromJson(json);
}