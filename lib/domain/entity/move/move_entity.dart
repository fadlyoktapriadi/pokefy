import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokefy/domain/entity/version_group_detail/version_group_detail_entity.dart';
import 'package:pokefy/domain/entity/species/species_entity.dart';

part 'move_entity.freezed.dart';
part 'move_entity.g.dart';

@freezed
abstract class MoveEntity with _$MoveEntity {
  const factory MoveEntity({
    @JsonKey(name: "move")
    SpeciesEntity? move,
    @JsonKey(name: "version_group_details")
    List<VersionGroupDetailEntity>? versionGroupDetails,
  }) = _MoveEntity;

  factory MoveEntity.fromJson(Map<String, dynamic> json) => _$MoveEntityFromJson(json);
}