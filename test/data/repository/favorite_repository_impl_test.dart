import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokefy/data/repository/favorite_repository_impl.dart';
import 'package:pokefy/domain/data/local/favorite_local_data_source.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';

class MockFavoriteLocalDataSource extends Mock implements FavoriteLocalDataSource {}

void main() {
  late MockFavoriteLocalDataSource mockDataSource;
  late FavoriteRepositoryImpl repository;

  setUp(() {
    mockDataSource = MockFavoriteLocalDataSource();
    repository = FavoriteRepositoryImpl(localDataSource: mockDataSource);
  });

  group('FavoriteRepositoryImpl', () {
    group('toggleFavorite', () {
      test('should return and do nothing if pokemon.id is null', () async {
        const tPokemon = PokemonEntity(name: 'missingno');

        await repository.toggleFavorite(tPokemon);

        verifyZeroInteractions(mockDataSource);
      });

      test('should call removePokemon if pokemon is already a favorite', () async {
        const tId = 25;
        const tPokemon = PokemonEntity(id: tId, name: 'pikachu');

        when(() => mockDataSource.isFavorite(tId)).thenReturn(true);
        when(() => mockDataSource.removePokemon(tId)).thenAnswer((_) async {});

        await repository.toggleFavorite(tPokemon);

        verify(() => mockDataSource.isFavorite(tId)).called(1);
        verify(() => mockDataSource.removePokemon(tId)).called(1);
        verifyNever(() => mockDataSource.savePokemon(id: any(named: 'id'), pokemonJson: any(named: 'pokemonJson')));
      });

      test('should call savePokemon if pokemon is not a favorite', () async {
        const tId = 25;
        const tPokemon = PokemonEntity(id: tId, name: 'pikachu');
        final tJsonString = jsonEncode(tPokemon.toJson());

        when(() => mockDataSource.isFavorite(tId)).thenReturn(false);
        when(() => mockDataSource.savePokemon(id: tId, pokemonJson: tJsonString))
            .thenAnswer((_) async {});

        await repository.toggleFavorite(tPokemon);

        verify(() => mockDataSource.isFavorite(tId)).called(1);
        verify(() => mockDataSource.savePokemon(id: tId, pokemonJson: tJsonString)).called(1);
        verifyNever(() => mockDataSource.removePokemon(any()));
      });
    });

    group('removeFavorite', () {
      test('should call removePokemon on LocalDataSource with correct id', () async {
        const tId = 25;
        when(() => mockDataSource.removePokemon(tId)).thenAnswer((_) async {});

        await repository.removeFavorite(tId);

        verify(() => mockDataSource.removePokemon(tId)).called(1);
      });
    });

    group('isFavorite', () {
      test('should return true when LocalDataSource returns true', () {
        const tId = 25;
        when(() => mockDataSource.isFavorite(tId)).thenReturn(true);

        final result = repository.isFavorite(tId);

        expect(result, isTrue);
        verify(() => mockDataSource.isFavorite(tId)).called(1);
      });

      test('should return false when LocalDataSource returns false', () {
        const tId = 25;
        when(() => mockDataSource.isFavorite(tId)).thenReturn(false);

        final result = repository.isFavorite(tId);

        expect(result, isFalse);
        verify(() => mockDataSource.isFavorite(tId)).called(1);
      });
    });

    group('getFavorites', () {
      test('should return list of PokemonEntity mapped from JSON string list', () {
        const tPokemon1 = PokemonEntity(id: 1, name: 'bulbasaur');
        const tPokemon2 = PokemonEntity(id: 25, name: 'pikachu');
        final jsonString1 = jsonEncode(tPokemon1.toJson());
        final jsonString2 = jsonEncode(tPokemon2.toJson());
        final jsonList = [jsonString1, jsonString2];

        when(() => mockDataSource.getAllFavoriteJson()).thenReturn(jsonList);

        final result = repository.getFavorites();

        expect(result, equals([tPokemon1, tPokemon2]));
        verify(() => mockDataSource.getAllFavoriteJson()).called(1);
      });
    });
  });
}
