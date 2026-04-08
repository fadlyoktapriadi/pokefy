import 'package:freezed_annotation/freezed_annotation.dart';

part 'habitat_entity.freezed.dart';
part 'habitat_entity.g.dart';

@freezed
abstract class HabitatEntity with _$HabitatEntity {
  const factory HabitatEntity({
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "url")
    String? url,
  }) = _HabitatEntity;

  factory HabitatEntity.fromJson(Map<String, dynamic> json) => _$HabitatEntityFromJson(json);
}

