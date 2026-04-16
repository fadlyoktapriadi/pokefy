import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';
import 'package:pokefy/domain/repository/pokemon_repository.dart';
import 'package:pokefy/domain/usecase/get_detail_pokemon_use_case.dart';

class MockPokemonRepository extends Mock implements PokemonRepository {}

void main() {
  late MockPokemonRepository mockPokemonRepository;
  late GetDetailPokemonUseCase useCase;

  setUp(() {
    mockPokemonRepository = MockPokemonRepository();
    useCase = GetDetailPokemonUseCase(mockPokemonRepository);
  });

  const tNamePokemon = 'bulbasaur';

  const tPokemonDetail = PokemonEntity(
    id: 1,
    name: 'bulbasaur'
  );

  test('should get pokemon detail from the repository', () async {
    when(
          () => mockPokemonRepository.getPokemonDetail(tNamePokemon),
    ).thenAnswer((_) async => Right(tPokemonDetail));

    final result = await useCase.call(tNamePokemon);

    expect(result, Right(tPokemonDetail));
    verify(() => mockPokemonRepository.getPokemonDetail(tNamePokemon)).called(1);
  });
}
