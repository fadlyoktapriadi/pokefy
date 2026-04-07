import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokefy/domain/entity/other/home_entity.dart';
import 'package:pokefy/domain/entity/spirites/sprites_entity.dart';

part 'other_entity.freezed.dart';
part 'other_entity.g.dart';

@freezed
abstract class OtherEntity with _$OtherEntity {
  const factory OtherEntity({
    @JsonKey(name: "home")
    HomeEntity? home,
    @JsonKey(name: "showdown")
    SpritesEntity? showdown,
  }) = _OtherEntity;

  factory OtherEntity.fromJson(Map<String, dynamic> json) => _$OtherEntityFromJson(json);
}