import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_entity.freezed.dart';
part 'pokemon_entity.g.dart';

@freezed
abstract class PokemonEntity with _$PokemonEntity {
  const factory PokemonEntity({
    @JsonKey(name: "base_experience")
    int? baseExperience,
    @JsonKey(name: "height")
    int? height,
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "order")
    int? order,
    @JsonKey(name: "weight")
    int? weight,
  }) = _PokemonEntity;

  factory PokemonEntity.fromJson(Map<String, dynamic> json) => _$PokemonEntityFromJson(json);
}
