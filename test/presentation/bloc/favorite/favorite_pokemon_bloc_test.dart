import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';
import 'package:pokefy/domain/usecase/check_favorite_use_case.dart';
import 'package:pokefy/domain/usecase/get_favorites_use_case.dart';
import 'package:pokefy/domain/usecase/toggle_favorite_use_case.dart';
import 'package:pokefy/presentation/bloc/favorite/favorite_pokemon_bloc.dart';

class MockToggleFavoriteUseCase extends Mock implements ToggleFavoriteUseCase {}
class MockCheckFavoriteUseCase extends Mock implements CheckFavoriteUseCase {}
class MockGetFavoritesUseCase extends Mock implements GetFavoritesUseCase {}

class FakePokemonEntity extends Fake implements PokemonEntity {}

void main() {
  setUpAll(() {
    registerFallbackValue(FakePokemonEntity());
  });

  late MockToggleFavoriteUseCase mockToggleFavoriteUseCase;
  late MockCheckFavoriteUseCase mockCheckFavoriteUseCase;
  late MockGetFavoritesUseCase mockGetFavoritesUseCase;

  setUp(() {
    mockToggleFavoriteUseCase = MockToggleFavoriteUseCase();
    mockCheckFavoriteUseCase = MockCheckFavoriteUseCase();
    mockGetFavoritesUseCase = MockGetFavoritesUseCase();
  });

  FavoritePokemonBloc buildBloc() => FavoritePokemonBloc(
    mockToggleFavoriteUseCase,
    mockCheckFavoriteUseCase,
    mockGetFavoritesUseCase,
  );

  const tPokemonId = 25;
  const tPokemon = PokemonEntity(id: tPokemonId, name: 'pikachu');
  const tPokemonNoId = PokemonEntity(id: null, name: 'missingno');
  final tPokemonList = [tPokemon];

  group('FavoritePokemonBloc', () {
    test('initial state should be FavoritePokemonState.initial()', () {
      expect(buildBloc().state, const FavoritePokemonState.initial());
    });

    blocTest<FavoritePokemonBloc, FavoritePokemonState>(
      'emits [status] when CheckStatus is added and pokemon is favorite',
      build: () {
        when(() => mockCheckFavoriteUseCase.call(tPokemonId)).thenReturn(true);
        return buildBloc();
      },
      act: (bloc) => bloc.add(const FavoritePokemonEvent.checkStatus(pokemonId: tPokemonId)),
      expect: () => const [
        FavoritePokemonState.status(isFavorite: true),
      ],
      verify: (_) {
        verify(() => mockCheckFavoriteUseCase.call(tPokemonId)).called(1);
      },
    );

    blocTest<FavoritePokemonBloc, FavoritePokemonState>(
      'emits [error] when ToggleFavorite is added but pokemon id is null',
      build: () => buildBloc(),
      act: (bloc) => bloc.add(const FavoritePokemonEvent.toggle(pokemon: tPokemonNoId)),
      expect: () => const [
        FavoritePokemonState.error('Pokemon id is null'),
      ],
      verify: (_) {
        verifyNever(() => mockToggleFavoriteUseCase.call(any()));
        verifyNever(() => mockCheckFavoriteUseCase.call(any()));
      },
    );

    blocTest<FavoritePokemonBloc, FavoritePokemonState>(
      'emits [status] when ToggleFavorite is added successfully',
      build: () {
        when(() => mockToggleFavoriteUseCase.call(tPokemon)).thenAnswer((_) async => {});
        when(() => mockCheckFavoriteUseCase.call(tPokemonId)).thenReturn(true);
        return buildBloc();
      },
      act: (bloc) => bloc.add(const FavoritePokemonEvent.toggle(pokemon: tPokemon)),
      expect: () => const [
        FavoritePokemonState.status(isFavorite: true),
      ],
      verify: (_) {
        verify(() => mockToggleFavoriteUseCase.call(tPokemon)).called(1);
        verify(() => mockCheckFavoriteUseCase.call(tPokemonId)).called(1);
      },
    );

    blocTest<FavoritePokemonBloc, FavoritePokemonState>(
      'emits [loading, loaded] when LoadAllFavorites is added',
      build: () {
        when(() => mockGetFavoritesUseCase.call()).thenReturn(tPokemonList);
        return buildBloc();
      },
      act: (bloc) => bloc.add(const FavoritePokemonEvent.loadAll()),
      expect: () => [
        const FavoritePokemonState.loading(),
        FavoritePokemonState.loaded(tPokemonList),
      ],
      verify: (_) {
        verify(() => mockGetFavoritesUseCase.call()).called(1);
      },
    );
  });
}
