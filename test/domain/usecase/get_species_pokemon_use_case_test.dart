import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokefy/core/error/failure.dart';
import 'package:pokefy/domain/entity/species/species_entity.dart';
import 'package:pokefy/domain/repository/pokemon_repository.dart';
import 'package:pokefy/domain/usecase/get_species_pokemon_use_case.dart';

class MockPokemonRepository extends Mock implements PokemonRepository {}

void main() {
  late MockPokemonRepository mockPokemonRepository;
  late GetSpeciesPokemonUseCase useCase;

  setUp(() {
    mockPokemonRepository = MockPokemonRepository();
    useCase = GetSpeciesPokemonUseCase(mockPokemonRepository);
  });

  const tId = '10';
  const tSpeciesEntity = SpeciesEntity(id: 10);

  test('should get species chain from the repository successfully', () async {
    when(
          () => mockPokemonRepository.getPokemonSpecies(tId),
    ).thenAnswer((_) async => const Right(tSpeciesEntity));

    final result = await useCase.call(tId);

    expect(result, const Right(tSpeciesEntity));
    verify(() => mockPokemonRepository.getPokemonSpecies(tId)).called(1);
    verifyNoMoreInteractions(mockPokemonRepository);
  });

  test(
    'should return failure when getting species chain from the repository fails',
        () async {
      const tFailure = ServerFailure(message: 'Server failure');
      when(
            () => mockPokemonRepository.getPokemonSpecies(tId),
      ).thenAnswer((_) async => const Left(tFailure));

      final result = await useCase.call(tId);

      expect(result, const Left(tFailure));
      verify(() => mockPokemonRepository.getPokemonSpecies(tId)).called(1);
      verifyNoMoreInteractions(mockPokemonRepository);
    },
  );
}
