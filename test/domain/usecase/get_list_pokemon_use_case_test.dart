import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';
import 'package:pokefy/domain/repository/pokemon_repository.dart';
import 'package:pokefy/domain/usecase/get_list_pokemon_use_case.dart';

class MockPokemonRepository extends Mock implements PokemonRepository {}

void main() {
  late MockPokemonRepository mockPokemonRepository;
  late GetListPokemonUseCase useCase;

  setUp(() {
    mockPokemonRepository = MockPokemonRepository();
    useCase = GetListPokemonUseCase(mockPokemonRepository);
  });

  const offset = 0;
  const limit = 20;

  final tPokemonList = [
    const PokemonEntity(id: 1, name: 'bulbasaur'),
    const PokemonEntity(id: 2, name: 'ivysaur'),
  ];

  test('should get pokemon list from the repository', () async {
    when(
      () => mockPokemonRepository.getListPokemon(offset, limit),
    ).thenAnswer((_) async => Right(tPokemonList));

    final result = await useCase.call(offset, limit);

    expect(result, Right(tPokemonList));
    verify(() => mockPokemonRepository.getListPokemon(offset, limit)).called(1);
  });
}
