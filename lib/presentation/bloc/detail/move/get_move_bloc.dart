import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokefy/domain/entity/move/move_entity.dart';
import 'package:pokefy/domain/entity/move/move_detail_entity.dart';
import 'package:pokefy/domain/usecase/get_move_detail_use_case.dart';

part 'get_move_event.dart';
part 'get_move_state.dart';
part 'get_move_bloc.freezed.dart';

class MoveData {
  final MoveEntity move;
  final MoveDetailEntity detail;

  MoveData({required this.move, required this.detail});
}

class GetMoveBloc extends Bloc<GetMoveEvent, GetMoveState> {
  final GetMoveDetailUseCase _getMoveDetailUseCase;

  GetMoveBloc(this._getMoveDetailUseCase) : super(const GetMoveState.initial()) {
    on<GetMoveEvent>((event, emit) async {
      await event.map(
        getMoves: (e) async => _onGetMoves(e.moves, emit),
      );
    });
  }

  Future<void> _onGetMoves(List<MoveEntity> moves, Emitter<GetMoveState> emit) async {
    if (moves.isEmpty) {
      emit(const GetMoveState.loaded({}));
      return;
    }

    emit(const GetMoveState.loading());

    final List<MoveData> moveDataList = [];
    final fetchFutures = moves.map((move) async {
      final url = move.move?.url;
      if (url == null || url.isEmpty) return null;

      final id = url.split('/').where((part) => part.isNotEmpty).last;
      final result = await _getMoveDetailUseCase(id);

      return result.fold(
        (failure) => null,
        (detail) => MoveData(move: move, detail: detail),
      );
    });

    final results = await Future.wait(fetchFutures);
    for (final result in results) {
      if (result != null) {
        moveDataList.add(result);
      }
    }

    // Group by move learn method
    final Map<String, List<MoveData>> groupedMoves = {};
    for (final moveData in moveDataList) {
      final details = moveData.move.versionGroupDetails ?? [];
      if (details.isNotEmpty) {
        // Just take the first one or latest if sorted, here we take first
        final method = details.first.moveLearnMethod?.name ?? 'unknown';
        if (!groupedMoves.containsKey(method)) {
          groupedMoves[method] = [];
        }
        groupedMoves[method]!.add(moveData);
      } else {
        if (!groupedMoves.containsKey('unknown')) {
          groupedMoves['unknown'] = [];
        }
        groupedMoves['unknown']!.add(moveData);
      }
    }

    // Optional: Sort each group by level if it's level-up
    if (groupedMoves.containsKey('level-up')) {
      groupedMoves['level-up']!.sort((a, b) {
        final aLevel = a.move.versionGroupDetails?.first.levelLearnedAt ?? 0;
        final bLevel = b.move.versionGroupDetails?.first.levelLearnedAt ?? 0;
        return aLevel.compareTo(bLevel);
      });
    }

    emit(GetMoveState.loaded(groupedMoves));
  }
}
