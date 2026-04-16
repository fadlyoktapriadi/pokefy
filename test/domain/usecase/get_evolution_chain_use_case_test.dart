import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokefy/core/error/failure.dart';
import 'package:pokefy/domain/entity/evolution_chain/evolution_chain_entity.dart';
import 'package:pokefy/domain/repository/pokemon_repository.dart';
import 'package:pokefy/domain/usecase/get_evolution_chain_use_case.dart';

class MockPokemonRepository extends Mock implements PokemonRepository {}

void main() {
  late MockPokemonRepository mockPokemonRepository;
  late GetEvolutionChainUseCase useCase;

  setUp(() {
    mockPokemonRepository = MockPokemonRepository();
    useCase = GetEvolutionChainUseCase(mockPokemonRepository);
  });

  const tId = '10';
  const tEvolutionChainEntity = EvolutionChainEntity(id: 10);

  test('should get evolution chain from the repository successfully', () async {
    when(
      () => mockPokemonRepository.getEvolutionChain(tId),
    ).thenAnswer((_) async => const Right(tEvolutionChainEntity));

    final result = await useCase.call(tId);

    expect(result, const Right(tEvolutionChainEntity));
    verify(() => mockPokemonRepository.getEvolutionChain(tId)).called(1);
    verifyNoMoreInteractions(mockPokemonRepository);
  });

  test(
    'should return failure when getting evolution chain from the repository fails',
    () async {
      const tFailure = ServerFailure(message: 'Server failure');
      when(
        () => mockPokemonRepository.getEvolutionChain(tId),
      ).thenAnswer((_) async => const Left(tFailure));

      final result = await useCase.call(tId);

      expect(result, const Left(tFailure));
      verify(() => mockPokemonRepository.getEvolutionChain(tId)).called(1);
      verifyNoMoreInteractions(mockPokemonRepository);
    },
  );
}
