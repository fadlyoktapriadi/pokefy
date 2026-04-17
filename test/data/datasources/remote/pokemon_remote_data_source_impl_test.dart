import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokefy/core/error/failure.dart';
import 'package:pokefy/core/networks/dio_client.dart';
import 'package:pokefy/data/datasources/remote/pokemon_remote_data_source_impl.dart';

class _MockDioClient extends Mock implements DioClient {}

class _MockDio extends Mock implements Dio {}

void main() {
  late _MockDioClient mockDioClient;
  late _MockDio mockDio;
  late PokemonRemoteDataSourceImpl dataSource;

  Response<dynamic> response({
    required String path,
    required Map<String, dynamic> data,
  }) {
    return Response<dynamic>(
      requestOptions: RequestOptions(path: path),
      data: data,
      statusCode: 200,
    );
  }

  setUp(() {
    mockDioClient = _MockDioClient();
    mockDio = _MockDio();
    when(() => mockDioClient.dio).thenReturn(mockDio);

    dataSource = PokemonRemoteDataSourceImpl(dioClient: mockDioClient);
  });

  group('PokemonRemoteDataSourceImpl', () {
    group('getListPokemon', () {
      test('returns PokemonListResponseDto when request succeeds', () async {
        when(
              () => mockDio.get(
            '/pokemon',
            queryParameters: {'offset': 0, 'limit': 20},
          ),
        ).thenAnswer(
              (_) async => response(
            path: '/pokemon',
            data: {
              'count': 1302,
              'next': 'https://pokeapi.co/api/v2/pokemon?offset=20&limit=20',
              'previous': null,
              'results': [
                {'name': 'bulbasaur', 'url': 'https://pokeapi.co/api/v2/pokemon/1/'},
              ],
            },
          ),
        );

        final result = await dataSource.getListPokemon(offset: 0, limit: 20);

        expect(result.results, hasLength(1));
        expect(result.results.first.name, 'bulbasaur');

        verify(
              () => mockDio.get(
            '/pokemon',
            queryParameters: {'offset': 0, 'limit': 20},
          ),
        ).called(1);
      });

      test('throws ServerFailure when request fails', () async {
        when(
              () => mockDio.get(
            '/pokemon',
            queryParameters: {'offset': 0, 'limit': 20},
          ),
        ).thenThrow(Exception('network error'));

        expect(
              () => dataSource.getListPokemon(offset: 0, limit: 20),
          throwsA(
            isA<ServerFailure>().having(
                  (e) => e.message,
              'message',
              contains('Exception: network error'),
            ),
          ),
        );
      });
    });

    group('getPokemonDetail', () {
      test('returns PokemonEntity when request succeeds', () async {
        when(() => mockDio.get('/pokemon/pikachu')).thenAnswer(
              (_) async => response(
            path: '/pokemon/pikachu',
            data: {
              'id': 25,
              'name': 'pikachu',
              'sprites': {'front_default': 'https://img/pikachu.png'},
            },
          ),
        );

        final result = await dataSource.getPokemonDetail('pikachu');

        expect(result.id, 25);
        expect(result.name, 'pikachu');
        expect(result.sprites?.frontDefault, 'https://img/pikachu.png');
        verify(() => mockDio.get('/pokemon/pikachu')).called(1);
      });

      test('throws ServerFailure when request fails', () async {
        when(() => mockDio.get('/pokemon/pikachu')).thenThrow(Exception('failed'));

        expect(
              () => dataSource.getPokemonDetail('pikachu'),
          throwsA(isA<ServerFailure>()),
        );
      });
    });

    group('getPokemonSpecies', () {
      test('returns SpeciesEntity when request succeeds', () async {
        when(() => mockDio.get('/pokemon-species/25')).thenAnswer(
              (_) async => response(
            path: '/pokemon-species/25',
            data: {
              'id': 25,
              'name': 'pikachu',
              'evolution_chain': {'url': 'https://pokeapi.co/api/v2/evolution-chain/10/'},
            },
          ),
        );

        final result = await dataSource.getPokemonSpecies('25');

        expect(result.id, 25);
        expect(result.name, 'pikachu');
        expect(result.evolutionChain?.url, 'https://pokeapi.co/api/v2/evolution-chain/10/');
        verify(() => mockDio.get('/pokemon-species/25')).called(1);
      });

      test('throws ServerFailure when request fails', () async {
        when(() => mockDio.get('/pokemon-species/25')).thenThrow(Exception('failed'));

        expect(
              () => dataSource.getPokemonSpecies('25'),
          throwsA(isA<ServerFailure>()),
        );
      });
    });

    group('getTypeDefences', () {
      test('returns TypeDefencesEntity when request succeeds', () async {
        when(() => mockDio.get('/type/electric')).thenAnswer(
              (_) async => response(
            path: '/type/electric',
            data: {
              'damage_relations': {
                'double_damage_from': [
                  {'name': 'ground', 'url': 'https://pokeapi.co/api/v2/type/5/'},
                ],
                'double_damage_to': [],
                'half_damage_from': [],
                'no_damage_from': [],
              },
            },
          ),
        );

        final result = await dataSource.getTypeDefences('electric');

        expect(result.damageRelations?.doubleDamageFrom?.first.name, 'ground');
        verify(() => mockDio.get('/type/electric')).called(1);
      });

      test('throws ServerFailure when request fails', () async {
        when(() => mockDio.get('/type/electric')).thenThrow(Exception('failed'));

        expect(
              () => dataSource.getTypeDefences('electric'),
          throwsA(isA<ServerFailure>()),
        );
      });
    });

    group('getEvolutionChain', () {
      test('returns EvolutionChainEntity when request succeeds', () async {
        when(() => mockDio.get('/evolution-chain/10')).thenAnswer(
              (_) async => response(
            path: '/evolution-chain/10',
            data: {
              'id': 10,
              'chain': {
                'species': {'name': 'pichu', 'url': 'https://pokeapi.co/api/v2/pokemon-species/172/'},
                'evolves_to': [
                  {
                    'species': {'name': 'pikachu', 'url': 'https://pokeapi.co/api/v2/pokemon-species/25/'},
                    'evolution_details': [
                      {'min_level': 1},
                    ],
                    'evolves_to': [],
                  },
                ],
              },
            },
          ),
        );

        final result = await dataSource.getEvolutionChain('10');

        expect(result.id, 10);
        expect(result.chain?.species?.name, 'pichu');
        expect(result.chain?.evolvesTo?.first.species?.name, 'pikachu');
        verify(() => mockDio.get('/evolution-chain/10')).called(1);
      });

      test('throws ServerFailure when request fails', () async {
        when(() => mockDio.get('/evolution-chain/10')).thenThrow(Exception('failed'));

        expect(
              () => dataSource.getEvolutionChain('10'),
          throwsA(isA<ServerFailure>()),
        );
      });
    });

    group('getMoveDetail', () {
      test('returns MoveDetailEntity when request succeeds', () async {
        when(() => mockDio.get('/move/85')).thenAnswer(
              (_) async => response(
            path: '/move/85',
            data: {
              'id': 85,
              'name': 'thunderbolt',
              'accuracy': 100,
              'power': 90,
              'pp': 15,
              'priority': 0,
              'damage_class': {'name': 'special', 'url': 'https://pokeapi.co/api/v2/move-damage-class/3/'},
            },
          ),
        );

        final result = await dataSource.getMoveDetail('85');

        expect(result.id, 85);
        expect(result.name, 'thunderbolt');
        expect(result.damageClass?.name, 'special');
        verify(() => mockDio.get('/move/85')).called(1);
      });

      test('throws ServerFailure when request fails', () async {
        when(() => mockDio.get('/move/85')).thenThrow(Exception('failed'));

        expect(
              () => dataSource.getMoveDetail('85'),
          throwsA(isA<ServerFailure>()),
        );
      });
    });
  });
}
