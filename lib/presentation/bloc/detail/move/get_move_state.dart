part of 'get_move_bloc.dart';

@freezed
class GetMoveState with _$GetMoveState {
  const factory GetMoveState.initial() = _Initial;
  const factory GetMoveState.loading() = _Loading;
  const factory GetMoveState.loaded(Map<String, List<MoveData>> groupedMoves) = _Loaded;
  const factory GetMoveState.error(String message) = _Error;
}
