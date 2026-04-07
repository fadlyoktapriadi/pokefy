import 'package:freezed_annotation/freezed_annotation.dart';

part 'species_entity.freezed.dart';
part 'species_entity.g.dart';

@freezed
abstract class SpeciesEntity with _$SpeciesEntity {
  const factory SpeciesEntity({
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "url")
    String? url,
  }) = _SpeciesEntity;

  factory SpeciesEntity.fromJson(Map<String, dynamic> json) => _$SpeciesEntityFromJson(json);
}