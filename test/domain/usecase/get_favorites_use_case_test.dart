import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';
import 'package:pokefy/domain/repository/favorite_repository.dart';
import 'package:pokefy/domain/usecase/get_favorites_use_case.dart';

class MockFavoriteRepository extends Mock implements FavoriteRepository {}

void main() {
  late MockFavoriteRepository mockFavoriteRepository;
  late GetFavoritesUseCase useCase;

  setUp(() {
    mockFavoriteRepository = MockFavoriteRepository();
    useCase = GetFavoritesUseCase(mockFavoriteRepository);
  });

  final tPokemonList = [
    const PokemonEntity(id: 1, name: 'bulbasaur'),
    const PokemonEntity(id: 25, name: 'pikachu'),
  ];

  test('should return list of favorite pokemons from the repository', () {
    when(() => mockFavoriteRepository.getFavorites()).thenReturn(tPokemonList);

    final result = useCase.call();

    expect(result, tPokemonList);
    verify(() => mockFavoriteRepository.getFavorites()).called(1);
    verifyNoMoreInteractions(mockFavoriteRepository);
  });

  test('should return empty list when there are no favorites', () {
    when(() => mockFavoriteRepository.getFavorites()).thenReturn([]);

    final result = useCase.call();

    expect(result, isEmpty);
    verify(() => mockFavoriteRepository.getFavorites()).called(1);
    verifyNoMoreInteractions(mockFavoriteRepository);
  });
}
