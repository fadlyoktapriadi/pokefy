import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokefy/domain/entity/species/species_entity.dart';

part 'type_entity.freezed.dart';
part 'type_entity.g.dart';

@freezed
abstract class TypeEntity with _$TypeEntity {
  const factory TypeEntity({
    @JsonKey(name: "slot")
    int? slot,
    @JsonKey(name: "type")
    SpeciesEntity? type,
  }) = _Type;

  factory TypeEntity.fromJson(Map<String, dynamic> json) => _$TypeEntityFromJson(json);
}