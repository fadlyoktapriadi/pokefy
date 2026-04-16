import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokefy/core/error/failure.dart';
import 'package:pokefy/domain/entity/move/move_detail_entity.dart';
import 'package:pokefy/domain/repository/pokemon_repository.dart';
import 'package:pokefy/domain/usecase/get_move_detail_use_case.dart';

class MockPokemonRepository extends Mock implements PokemonRepository {}

void main() {
  late MockPokemonRepository mockPokemonRepository;
  late GetMoveDetailUseCase useCase;

  setUp(() {
    mockPokemonRepository = MockPokemonRepository();
    useCase = GetMoveDetailUseCase(mockPokemonRepository);
  });

  const tName = 'bulbasaur';
  const tMoveDetail = MoveDetailEntity(
    id: 1,
    name: 'tackle',
    power: 40,
    accuracy: 100,
    pp: 35,
  );

  test(
    'should get move detail from the repository successfully',
        () async {
      when(
            () => mockPokemonRepository.getMoveDetail(tName),
      ).thenAnswer((_) async => const Right(tMoveDetail));

      final result = await useCase.call(tName);

      expect(result, const Right(tMoveDetail));
      verify(() => mockPokemonRepository.getMoveDetail(tName)).called(1);
      verifyNoMoreInteractions(mockPokemonRepository);
    },
  );

  test(
    'should return failure when getting move from the repository fails',
        () async {
      const tFailure = ServerFailure(message: 'Server failure');
      when(
            () => mockPokemonRepository.getMoveDetail(tName),
      ).thenAnswer((_) async => const Left(tFailure));

      final result = await useCase.call(tName);

      expect(result, const Left(tFailure));
      verify(() => mockPokemonRepository.getMoveDetail(tName)).called(1);
      verifyNoMoreInteractions(mockPokemonRepository);
    },
  );
}
