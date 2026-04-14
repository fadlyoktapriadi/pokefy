import 'package:freezed_annotation/freezed_annotation.dart';


part 'move_detail_entity.freezed.dart';
part 'move_detail_entity.g.dart';

@freezed
abstract class MoveDetailEntity with _$MoveDetailEntity {
  const factory MoveDetailEntity({
    @JsonKey(name: "accuracy")
    int? accuracy,
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "damage_class")
    MoveDamageClassEntity? damageClass,
    @JsonKey(name: "power")
    int? power,
    @JsonKey(name: "pp")
    int? pp,
    @JsonKey(name: "priority")
    int? priority,

  }) = _MoveDetailEntity;

  factory MoveDetailEntity.fromJson(Map<String, dynamic> json) => _$MoveDetailEntityFromJson(json);
}

@freezed
abstract class MoveDamageClassEntity with _$MoveDamageClassEntity {
  const factory MoveDamageClassEntity({
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "url")
    String? url,
  }) = _MoveDamageClassEntity;

  factory MoveDamageClassEntity.fromJson(Map<String, dynamic> json) => _$MoveDamageClassEntityFromJson(json);
}
