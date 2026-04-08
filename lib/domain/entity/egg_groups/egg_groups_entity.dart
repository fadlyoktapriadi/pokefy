
import 'package:freezed_annotation/freezed_annotation.dart';

part 'egg_groups_entity.freezed.dart';
part 'egg_groups_entity.g.dart';

@freezed
abstract class EggGroupsEntity with _$EggGroupsEntity {
  const factory EggGroupsEntity({
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "url")
    String? url,
  }) = _EggGroupsEntity;

  factory EggGroupsEntity.fromJson(Map<String, dynamic> json) => _$EggGroupsEntityFromJson(json);
}