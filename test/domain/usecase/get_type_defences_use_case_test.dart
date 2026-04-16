import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokefy/core/error/failure.dart';
import 'package:pokefy/domain/entity/type/type_defences_entity.dart';
import 'package:pokefy/domain/repository/pokemon_repository.dart';
import 'package:pokefy/domain/usecase/get_type_defences_use_case.dart';

class MockPokemonRepository extends Mock implements PokemonRepository {}

void main() {
  late MockPokemonRepository mockPokemonRepository;
  late GetTypeDefencesUseCase useCase;

  setUp(() {
    mockPokemonRepository = MockPokemonRepository();
    useCase = GetTypeDefencesUseCase(mockPokemonRepository);
  });

  const tName = 'bulbasaur';
  const tTypeDefences = TypeDefencesEntity(
    damageRelations: DamageRelations(
      doubleDamageFrom: [
        ItemDamageRelation(
          name: 'fire',
          url: 'https://pokeapi.co/api/v2/type/10/',
        ),
      ],
      doubleDamageTo: [
        ItemDamageRelation(
          name: 'grass',
          url: 'https://pokeapi.co/api/v2/type/12/',
        ),
      ],
      halfDamageFrom: [
        ItemDamageRelation(
          name: 'water',
          url: 'https://pokeapi.co/api/v2/type/11/',
        ),
      ],
      noDamageFrom: [
        ItemDamageRelation(
          name: 'electric',
          url: 'https://pokeapi.co/api/v2/type/13/',
        ),
      ],
    ),
  );

  test(
    'should get type defences chain from the repository successfully',
    () async {
      when(
        () => mockPokemonRepository.getTypeDefences(tName),
      ).thenAnswer((_) async => const Right(tTypeDefences));

      final result = await useCase.call(tName);

      expect(result, const Right(tTypeDefences));
      verify(() => mockPokemonRepository.getTypeDefences(tName)).called(1);
      verifyNoMoreInteractions(mockPokemonRepository);
    },
  );

  test(
    'should return failure when getting type defences from the repository fails',
    () async {
      const tFailure = ServerFailure(message: 'Server failure');
      when(
        () => mockPokemonRepository.getTypeDefences(tName),
      ).thenAnswer((_) async => const Left(tFailure));

      final result = await useCase.call(tName);

      expect(result, const Left(tFailure));
      verify(() => mockPokemonRepository.getTypeDefences(tName)).called(1);
      verifyNoMoreInteractions(mockPokemonRepository);
    },
  );
}
