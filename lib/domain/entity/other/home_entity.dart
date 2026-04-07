
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_entity.freezed.dart';
part 'home_entity.g.dart';

@freezed
abstract class HomeEntity with _$HomeEntity {
  const factory HomeEntity({
    @JsonKey(name: "front_default")
    String? frontDefault,
    @JsonKey(name: "front_female")
    String? frontFemale,
    @JsonKey(name: "front_shiny")
    String? frontShiny,
    @JsonKey(name: "front_shiny_female")
    String? frontShinyFemale,
  }) = _HomeEntity;

  factory HomeEntity.fromJson(Map<String, dynamic> json) => _$HomeEntityFromJson(json);
}