import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokefy/core/error/failure.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';
import 'package:pokefy/domain/usecase/get_detail_pokemon_use_case.dart';
import 'package:pokefy/domain/usecase/get_list_pokemon_use_case.dart';
import 'package:pokefy/presentation/bloc/home/get_pokemon_bloc.dart';

class MockGetListPokemonUseCase extends Mock implements GetListPokemonUseCase {}
class MockGetDetailPokemonUseCase extends Mock implements GetDetailPokemonUseCase {}

void main() {
  late MockGetListPokemonUseCase mockGetListPokemonUseCase;
  late MockGetDetailPokemonUseCase mockGetDetailPokemonUseCase;

  setUp(() {
    mockGetListPokemonUseCase = MockGetListPokemonUseCase();
    mockGetDetailPokemonUseCase = MockGetDetailPokemonUseCase();
  });

  GetPokemonBloc buildBloc() => GetPokemonBloc(
    mockGetListPokemonUseCase,
    mockGetDetailPokemonUseCase,
  );

  final twentyPokemon = List.generate(20, (i) => PokemonEntity(name: 'mon$i'));

  group('GetPokemonBloc', () {
    test('initial state should be GetPokemonState.initial()', () {
      expect(buildBloc().state, const GetPokemonState.initial());
    });

    blocTest<GetPokemonBloc, GetPokemonState>(
      'emits [loading, error] when fetching initial page fails',
      build: () {
        when(() => mockGetListPokemonUseCase.call(0, 20))
            .thenAnswer((_) async => const Left(ServerFailure(message: 'error')));
        return buildBloc();
      },
      act: (bloc) => bloc.add(const GetPokemonEvent.getListPokemon()),
      expect: () => [
        const GetPokemonState.loading(),
        const GetPokemonState.error('error'),
      ],
    );

    blocTest<GetPokemonBloc, GetPokemonState>(
      'emits [loading, loaded] with empty list and hasReachedMax true when list response is empty',
      build: () {
        when(() => mockGetListPokemonUseCase.call(0, 20))
            .thenAnswer((_) async => const Right([]));
        return buildBloc();
      },
      act: (bloc) => bloc.add(const GetPokemonEvent.getListPokemon()),
      expect: () => [
        const GetPokemonState.loading(),
        const GetPokemonState.loaded(listPokemon: [], hasReachedMax: true),
      ],
    );

    blocTest<GetPokemonBloc, GetPokemonState>(
      'handles detail fetch failure smoothly (ignores individual failures)',
      build: () {
        when(() => mockGetListPokemonUseCase.call(0, 20))
            .thenAnswer((_) async => const Right([PokemonEntity(name: 'pika')]));
        when(() => mockGetDetailPokemonUseCase.call('pika'))
            .thenAnswer((_) async => const Left(ServerFailure(message: 'detail error')));
        return buildBloc();
      },
      act: (bloc) => bloc.add(const GetPokemonEvent.getListPokemon()),
      expect: () => [
        const GetPokemonState.loading(),
        const GetPokemonState.loaded(listPokemon: [], hasReachedMax: true),
      ],
    );

    blocTest<GetPokemonBloc, GetPokemonState>(
      'handles a pokemon safely if pokemon.name is null',
      build: () {
        when(() => mockGetListPokemonUseCase.call(0, 20))
            .thenAnswer((_) async => const Right([PokemonEntity()]));
        when(() => mockGetDetailPokemonUseCase.call(''))
            .thenAnswer((_) async => const Right(PokemonEntity(id: 1)));
        return buildBloc();
      },
      act: (bloc) => bloc.add(const GetPokemonEvent.getListPokemon()),
      expect: () => [
        const GetPokemonState.loading(),
        const GetPokemonState.loaded(listPokemon: [PokemonEntity(id: 1)], hasReachedMax: true),
      ],
    );

    blocTest<GetPokemonBloc, GetPokemonState>(
      'emits [loading, loaded(x2)] tracking pagination properly when fetchNextPage fails',
      build: () {
        when(() => mockGetListPokemonUseCase.call(0, 20))
            .thenAnswer((_) async => Right(twentyPokemon));
        when(() => mockGetDetailPokemonUseCase.call(any())).thenAnswer(
              (invocation) async {
            final name = invocation.positionalArguments[0] as String;
            return Right(PokemonEntity(name: name));
          },
        );
        when(() => mockGetListPokemonUseCase.call(20, 20))
            .thenAnswer((_) async => const Left(ServerFailure(message: 'error')));
        return buildBloc();
      },
      act: (bloc) async {
        bloc.add(const GetPokemonEvent.getListPokemon());
        await Future.delayed(Duration.zero);
        bloc.add(const GetPokemonEvent.fetchNextPage());
      },
      expect: () => [
        const GetPokemonState.loading(),
        GetPokemonState.loaded(listPokemon: twentyPokemon, hasReachedMax: false),
        GetPokemonState.loaded(listPokemon: twentyPokemon, hasReachedMax: false, isLoadingMore: true),
        GetPokemonState.loaded(listPokemon: twentyPokemon, hasReachedMax: false, isLoadingMore: false), // Failure gracefully aborts and resets loading flag
      ],
    );

    blocTest<GetPokemonBloc, GetPokemonState>(
      'ignores fetchNextPage trigger if hasReachedMax is strictly true',
      build: () {
        when(() => mockGetListPokemonUseCase.call(0, 20))
            .thenAnswer((_) async => const Right([]));
        return buildBloc();
      },
      act: (bloc) async {
        bloc.add(const GetPokemonEvent.getListPokemon());
        await Future.delayed(Duration.zero);
        bloc.add(const GetPokemonEvent.fetchNextPage());
      },
      expect: () => [
        const GetPokemonState.loading(),
        const GetPokemonState.loaded(listPokemon: [], hasReachedMax: true),
      ],
    );
  });
}
