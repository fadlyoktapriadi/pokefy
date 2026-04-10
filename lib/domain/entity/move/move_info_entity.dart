
import 'package:freezed_annotation/freezed_annotation.dart';

part 'move_info_entity.freezed.dart';
part 'move_info_entity.g.dart';

@freezed
abstract class MoveInfoEntity with _$MoveInfoEntity {
  const factory MoveInfoEntity({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'url') String? url,
  }) = _MoveInfoEntity;

  factory MoveInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$MoveInfoEntityFromJson(json);

}