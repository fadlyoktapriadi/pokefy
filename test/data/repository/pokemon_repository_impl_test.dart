import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokefy/core/error/failure.dart';
import 'package:pokefy/data/models/response/pokemon_list_response_dto.dart';
import 'package:pokefy/data/repository/pokemon_repository_impl.dart';
import 'package:pokefy/domain/data/remote/pokemon_remote_data_source.dart';
import 'package:pokefy/domain/entity/evolution_chain/evolution_chain_entity.dart';
import 'package:pokefy/domain/entity/move/move_detail_entity.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';
import 'package:pokefy/domain/entity/species/species_entity.dart';
import 'package:pokefy/domain/entity/type/type_defences_entity.dart';

class MockPokemonRemoteDataSource extends Mock implements PokemonRemoteDataSource {}

void main() {
  late MockPokemonRemoteDataSource mockRemoteDataSource;
  late PokemonRepositoryImpl repository;

  setUp(() {
    mockRemoteDataSource = MockPokemonRemoteDataSource();
    repository = PokemonRepositoryImpl(pokemonRemoteDataSource: mockRemoteDataSource);
  });

  group('PokemonRepositoryImpl', () {
    const tExceptionMessage = 'Exception: Server error';

    group('getListPokemon', () {
      const tOffset = 0;
      const tLimit = 20;
      const tResponseDto = PokemonListResponseDto(
        count: 1,
        next: null,
        previous: null,
        results: [Result(name: 'pikachu', url: 'url_1')],
      );
      // Freezed object, aman langsung dibandingkan
      final tExpectedList = [const PokemonEntity(name: 'pikachu')];

      test('should return Right(List<PokemonEntity>) when remote data source is successful', () async {
        when(() => mockRemoteDataSource.getListPokemon(offset: tOffset, limit: tLimit))
            .thenAnswer((_) async => tResponseDto);

        final result = await repository.getListPokemon(tOffset, tLimit);

        expect(result.isRight(), isTrue);
        result.fold(
              (_) => fail('Sengaja digagalkan karena harusnya mengembalikan Right'),
              (data) => expect(data, equals(tExpectedList)), // Freezed value equality auto work
        );
        verify(() => mockRemoteDataSource.getListPokemon(offset: tOffset, limit: tLimit)).called(1);
      });

      test('should return Left(ServerFailure) when remote data source throws exception', () async {
        when(() => mockRemoteDataSource.getListPokemon(offset: tOffset, limit: tLimit))
            .thenThrow(Exception('Server error'));

        final result = await repository.getListPokemon(tOffset, tLimit);

        expect(result.isLeft(), isTrue);
        result.fold(
              (failure) {
            expect(failure, isA<ServerFailure>());
            expect(failure.message, tExceptionMessage);
          },
              (_) => fail('Sengaja digagalkan karena harusnya mengembalikan Left'),
        );
      });
    });

    group('getPokemonDetail', () {
      const tName = 'pikachu';
      const tPokemonEntity = PokemonEntity(id: 25, name: tName);

      test('should return Right(PokemonEntity) when remote data source is successful', () async {
        when(() => mockRemoteDataSource.getPokemonDetail(tName))
            .thenAnswer((_) async => tPokemonEntity);

        final result = await repository.getPokemonDetail(tName);

        result.fold(
              (_) => fail('Expected Right'),
              (data) => expect(data, equals(tPokemonEntity)),
        );
      });

      test('should return Left(ServerFailure) when remote data source throws exception', () async {
        when(() => mockRemoteDataSource.getPokemonDetail(tName))
            .thenThrow(Exception('Server error'));

        final result = await repository.getPokemonDetail(tName);

        result.fold(
              (failure) => expect(failure.message, tExceptionMessage),
              (_) => fail('Expected Left'),
        );
      });
    });

    group('getPokemonSpecies', () {
      const tId = '25';
      const tSpeciesEntity = SpeciesEntity(id: 25, name: 'pikachu');

      test('should return Right(SpeciesEntity)', () async {
        when(() => mockRemoteDataSource.getPokemonSpecies(tId))
            .thenAnswer((_) async => tSpeciesEntity);

        final result = await repository.getPokemonSpecies(tId);

        result.fold(
              (_) => fail('Expected Right'),
              (data) => expect(data, equals(tSpeciesEntity)),
        );
      });

      test('should return Left(ServerFailure)', () async {
        when(() => mockRemoteDataSource.getPokemonSpecies(tId))
            .thenThrow(Exception('Server error'));

        final result = await repository.getPokemonSpecies(tId);

        result.fold(
              (failure) => expect(failure.message, tExceptionMessage),
              (_) => fail('Expected Left'),
        );
      });
    });

    group('getTypeDefences', () {
      const tName = 'electric';
      const tTypeDefencesEntity = TypeDefencesEntity();

      test('should return Right(TypeDefencesEntity)', () async {
        when(() => mockRemoteDataSource.getTypeDefences(tName))
            .thenAnswer((_) async => tTypeDefencesEntity);

        final result = await repository.getTypeDefences(tName);

        result.fold(
              (_) => fail('Expected Right'),
              (data) => expect(data, equals(tTypeDefencesEntity)),
        );
      });

      test('should return Left(ServerFailure)', () async {
        when(() => mockRemoteDataSource.getTypeDefences(tName))
            .thenThrow(Exception('Server error'));

        final result = await repository.getTypeDefences(tName);

        result.fold(
              (failure) => expect(failure.message, tExceptionMessage),
              (_) => fail('Expected Left'),
        );
      });
    });

    group('getEvolutionChain', () {
      const tId = '10';
      const tEvolutionChainEntity = EvolutionChainEntity(id: 10);

      test('should return Right(EvolutionChainEntity)', () async {
        when(() => mockRemoteDataSource.getEvolutionChain(tId))
            .thenAnswer((_) async => tEvolutionChainEntity);

        final result = await repository.getEvolutionChain(tId);

        result.fold(
              (_) => fail('Expected Right'),
              (data) => expect(data, equals(tEvolutionChainEntity)),
        );
      });

      test('should return Left(ServerFailure)', () async {
        when(() => mockRemoteDataSource.getEvolutionChain(tId))
            .thenThrow(Exception('Server error'));

        final result = await repository.getEvolutionChain(tId);

        result.fold(
              (failure) => expect(failure.message, tExceptionMessage),
              (_) => fail('Expected Left'),
        );
      });
    });

    group('getMoveDetail', () {
      const tId = '85';
      const tMoveDetailEntity = MoveDetailEntity(id: 85, name: 'thunderbolt');

      test('should return Right(MoveDetailEntity)', () async {
        when(() => mockRemoteDataSource.getMoveDetail(tId))
            .thenAnswer((_) async => tMoveDetailEntity);

        final result = await repository.getMoveDetail(tId);

        result.fold(
              (_) => fail('Expected Right'),
              (data) => expect(data, equals(tMoveDetailEntity)),
        );
      });

      test('should return Left(ServerFailure)', () async {
        when(() => mockRemoteDataSource.getMoveDetail(tId))
            .thenThrow(Exception('Server error'));

        final result = await repository.getMoveDetail(tId);

        result.fold(
              (failure) => expect(failure.message, tExceptionMessage),
              (_) => fail('Expected Left'),
        );
      });
    });
  });
}
