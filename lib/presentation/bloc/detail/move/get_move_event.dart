part of 'get_move_bloc.dart';

@freezed
abstract class GetMoveEvent with _$GetMoveEvent {
  const factory GetMoveEvent.getMoves(List<MoveEntity> moves) = _GetMoves;
}
