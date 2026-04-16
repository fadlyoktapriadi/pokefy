import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokefy/core/error/failure.dart';
import 'package:pokefy/domain/entity/move/move_detail_entity.dart';
import 'package:pokefy/domain/entity/move/move_entity.dart';
import 'package:pokefy/domain/entity/move/move_info_entity.dart';
import 'package:pokefy/domain/entity/species/species_entity.dart';
import 'package:pokefy/domain/entity/version_group_detail/version_group_detail_entity.dart';
import 'package:pokefy/domain/usecase/get_move_detail_use_case.dart';
import 'package:pokefy/presentation/bloc/detail/move/get_move_bloc.dart';

class MockGetMoveDetailUseCase extends Mock implements GetMoveDetailUseCase {}

void main() {
  late MockGetMoveDetailUseCase mockGetMoveDetailUseCase;

  setUp(() {
    mockGetMoveDetailUseCase = MockGetMoveDetailUseCase();
  });

  GetMoveBloc buildBloc() => GetMoveBloc(mockGetMoveDetailUseCase);

  group('GetMoveBloc', () {
    test('initial state should be GetMoveState.initial()', () {
      expect(buildBloc().state, const GetMoveState.initial());
    });

    blocTest<GetMoveBloc, GetMoveState>(
      'emits [loaded] with empty map when moves list is empty',
      build: () => buildBloc(),
      act: (bloc) => bloc.add(const GetMoveEvent.getMoves([])),
      expect: () => const [
        GetMoveState.loaded({}),
      ],
    );

    const detailEntity = MoveDetailEntity(id: 1, name: 'tackle');

    const highLevelMove = MoveEntity(
      move: MoveInfoEntity(name: 'high-level', url: 'https://pokeapi.co/api/v2/move/10/'),
      versionGroupDetails: [
        VersionGroupDetailEntity(
          levelLearnedAt: 50,
          moveLearnMethod: SpeciesEntity(name: 'level-up'),
        ),
      ],
    );

    const lowLevelMove = MoveEntity(
      move: MoveInfoEntity(name: 'low-level', url: 'https://pokeapi.co/api/v2/move/11/'),
      versionGroupDetails: [
        VersionGroupDetailEntity(
          levelLearnedAt: 5,
          moveLearnMethod: SpeciesEntity(name: 'level-up'),
        ),
      ],
    );

    const emptyVersionGroupMove = MoveEntity(
      move: MoveInfoEntity(name: 'empty-group', url: 'https://pokeapi.co/api/v2/move/12/'),
      versionGroupDetails: [],
    );

    const noUrlMove = MoveEntity(
      move: MoveInfoEntity(name: 'no-url', url: null),
      versionGroupDetails: [],
    );

    const failingMove = MoveEntity(
      move: MoveInfoEntity(name: 'failing', url: 'https://pokeapi.co/api/v2/move/99/'),
      versionGroupDetails: [],
    );

    blocTest<GetMoveBloc, GetMoveState>(
      'emits [loading, loaded] handling filtering, failed requests, grouping, and level sorting',
      build: () {
        when(() => mockGetMoveDetailUseCase.call('10')).thenAnswer((_) async => const Right(detailEntity));
        when(() => mockGetMoveDetailUseCase.call('11')).thenAnswer((_) async => const Right(detailEntity));
        when(() => mockGetMoveDetailUseCase.call('12')).thenAnswer((_) async => const Right(detailEntity));
        when(() => mockGetMoveDetailUseCase.call('99')).thenAnswer((_) async => const Left(ServerFailure(message: 'error')));
        return buildBloc();
      },
      act: (bloc) => bloc.add(const GetMoveEvent.getMoves([
        highLevelMove,
        lowLevelMove,
        emptyVersionGroupMove,
        noUrlMove,
        failingMove,
      ])),
      expect: () => [
        const GetMoveState.loading(),
        isA<GetMoveState>().having(
              (state) => state.maybeWhen(
            loaded: (groupedMoves) {
              final levelUpMoves = groupedMoves['level-up']!;
              final isSorted = levelUpMoves[0].move.move?.name == 'low-level' &&
                  levelUpMoves[1].move.move?.name == 'high-level';

              final hasUnknowns = groupedMoves.containsKey('unknown');
              final unknownMoves = groupedMoves['unknown']!;
              final hasEmptyGroupFallback = unknownMoves.any((m) => m.move.move?.name == 'empty-group');

              final isCleaned = !groupedMoves.values.expand((element) => element).any((m) =>
              m.move.move?.name == 'no-url' || m.move.move?.name == 'failing');

              return isSorted && hasUnknowns && hasEmptyGroupFallback && isCleaned;
            },
            orElse: () => false,
          ),
          'Correctly resolves complex loaded state logic',
          true,
        ),
      ],
      verify: (_) {
        verify(() => mockGetMoveDetailUseCase.call('10')).called(1);
        verify(() => mockGetMoveDetailUseCase.call('11')).called(1);
        verify(() => mockGetMoveDetailUseCase.call('12')).called(1);
        verify(() => mockGetMoveDetailUseCase.call('99')).called(1);
      },
    );
  });
}
