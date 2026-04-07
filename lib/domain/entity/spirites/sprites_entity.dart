import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokefy/domain/entity/other/other_entity.dart';

part 'sprites_entity.freezed.dart';
part 'sprites_entity.g.dart';

@freezed
abstract class SpritesEntity with _$SpritesEntity {
  const factory SpritesEntity({
    @JsonKey(name: "back_default")
    String? backDefault,
    @JsonKey(name: "back_female")
    String? backFemale,
    @JsonKey(name: "back_shiny")
    String? backShiny,
    @JsonKey(name: "back_shiny_female")
    String? backShinyFemale,
    @JsonKey(name: "front_default")
    String? frontDefault,
    @JsonKey(name: "front_female")
    String? frontFemale,
    @JsonKey(name: "front_shiny")
    String? frontShiny,
    @JsonKey(name: "front_shiny_female")
    String? frontShinyFemale,
    @JsonKey(name: "other")
    OtherEntity? other,
  }) = _SpritesEntity;

  factory SpritesEntity.fromJson(Map<String, dynamic> json) => _$SpritesEntityFromJson(json);
}
