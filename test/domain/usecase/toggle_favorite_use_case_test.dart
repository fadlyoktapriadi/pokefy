import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';
import 'package:pokefy/domain/repository/favorite_repository.dart';
import 'package:pokefy/domain/usecase/toggle_favorite_use_case.dart';

class MockFavoriteRepository extends Mock implements FavoriteRepository {}

void main() {
  late MockFavoriteRepository mockFavoriteRepository;
  late ToggleFavoriteUseCase useCase;

  setUp(() {
    mockFavoriteRepository = MockFavoriteRepository();
    useCase = ToggleFavoriteUseCase(mockFavoriteRepository);
  });

  const tPokemon = PokemonEntity(id: 1, name: 'bulbasaur');

  test(
    'should call toggleFavorite on the repository with the given pokemon',
    () async {
      when(
        () => mockFavoriteRepository.toggleFavorite(tPokemon),
      ).thenAnswer((_) async => {});

      await useCase.call(tPokemon);

      verify(() => mockFavoriteRepository.toggleFavorite(tPokemon)).called(1);
      verifyNoMoreInteractions(mockFavoriteRepository);
    },
  );
}
