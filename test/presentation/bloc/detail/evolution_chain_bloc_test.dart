import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokefy/core/error/failure.dart';
import 'package:pokefy/domain/entity/evolution_chain/evolution_chain_entity.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';
import 'package:pokefy/domain/entity/species/species_entity.dart';
import 'package:pokefy/domain/usecase/get_detail_pokemon_use_case.dart';
import 'package:pokefy/domain/usecase/get_evolution_chain_use_case.dart';
import 'package:pokefy/presentation/bloc/detail/evolution/evolution_chain_bloc.dart';

class MockGetEvolutionChainUseCase extends Mock implements GetEvolutionChainUseCase {}
class MockGetDetailPokemonUseCase extends Mock implements GetDetailPokemonUseCase {}

void main() {
  late MockGetEvolutionChainUseCase mockGetEvolutionChainUseCase;
  late MockGetDetailPokemonUseCase mockGetDetailPokemonUseCase;

  setUp(() {
    mockGetEvolutionChainUseCase = MockGetEvolutionChainUseCase();
    mockGetDetailPokemonUseCase = MockGetDetailPokemonUseCase();
  });

  EvolutionChainBloc buildBloc() => EvolutionChainBloc(
    mockGetEvolutionChainUseCase,
    mockGetDetailPokemonUseCase,
  );

  const tId = '10';

  group('EvolutionChainBloc', () {
    test('initial state should be EvolutionChainState.initial()', () {
      expect(buildBloc().state, const EvolutionChainState.initial());
    });

    blocTest<EvolutionChainBloc, EvolutionChainState>(
      'emits [error] when id is empty',
      build: () => buildBloc(),
      act: (bloc) => bloc.add(const EvolutionChainEvent.getEvolutionChain(id: '')),
      expect: () => const [
        EvolutionChainState.error('Pokemon id is required'),
      ],
      verify: (_) {
        verifyZeroInteractions(mockGetEvolutionChainUseCase);
        verifyZeroInteractions(mockGetDetailPokemonUseCase);
      },
    );

    blocTest<EvolutionChainBloc, EvolutionChainState>(
      'emits [loading, error] when _getEvolutionChainUseCase returns Failure',
      build: () {
        when(() => mockGetEvolutionChainUseCase.call(tId))
            .thenAnswer((_) async => const Left(ServerFailure(message: 'Server error')));
        return buildBloc();
      },
      act: (bloc) => bloc.add(const EvolutionChainEvent.getEvolutionChain(id: tId)),
      expect: () => const [
        EvolutionChainState.loading(),
        EvolutionChainState.error('Server error'),
      ],
    );

    blocTest<EvolutionChainBloc, EvolutionChainState>(
      'emits [loading, loaded] mapped properly when evolution chain exists but chain is purely null',
      build: () {
        when(() => mockGetEvolutionChainUseCase.call(tId)).thenAnswer(
                (_) async => const Right(EvolutionChainEntity(id: 10, chain: null)));
        return buildBloc();
      },
      act: (bloc) => bloc.add(const EvolutionChainEvent.getEvolutionChain(id: tId)),
      expect: () => const [
        EvolutionChainState.loading(),
        EvolutionChainState.loaded(evolution: EvolutionChainEntity(id: 10, chain: null)),
      ],
    );

    const bulbasaurSpecies = SpeciesEntity(name: 'bulbasaur');
    const ivysaurSpecies = SpeciesEntity(name: 'ivysaur');
    const bulbasaurPokemon = PokemonEntity(id: 1, name: 'bulbasaur');

    const initialChain = ChainEvolutionEntity(
      species: bulbasaurSpecies,
      evolvesTo: [
        ChainEvolutionEntity(
          species: ivysaurSpecies,
          evolvesTo: [],
        ),
        ChainEvolutionEntity(
          species: null,
          evolvesTo: null,
        ),
      ],
    );

    const initialEvolution = EvolutionChainEntity(id: 1, chain: initialChain);

    const populatedChain = ChainEvolutionEntity(
      species: bulbasaurSpecies,
      pokemon: bulbasaurPokemon,
      evolvesTo: [
        ChainEvolutionEntity(
          species: ivysaurSpecies,
          pokemon: null,
          evolvesTo: [],
        ),
        ChainEvolutionEntity(
          species: null,
          evolvesTo: null,
        ),
      ],
    );

    const populatedEvolution = EvolutionChainEntity(id: 1, chain: populatedChain);

    blocTest<EvolutionChainBloc, EvolutionChainState>(
      'emits [loading, loaded] and populates full chain cleanly ignoring detail fetch failures along the way',
      build: () {
        when(() => mockGetEvolutionChainUseCase.call(tId))
            .thenAnswer((_) async => const Right(initialEvolution));

        when(() => mockGetDetailPokemonUseCase.call('bulbasaur'))
            .thenAnswer((_) async => const Right(bulbasaurPokemon));

        when(() => mockGetDetailPokemonUseCase.call('ivysaur'))
            .thenAnswer((_) async => const Left(ServerFailure(message: 'error mapped nicely')));

        return buildBloc();
      },
      act: (bloc) => bloc.add(const EvolutionChainEvent.getEvolutionChain(id: tId)),
      expect: () => const [
        EvolutionChainState.loading(),
        EvolutionChainState.loaded(evolution: populatedEvolution),
      ],
      verify: (_) {
        verify(() => mockGetDetailPokemonUseCase.call('bulbasaur')).called(1);
        verify(() => mockGetDetailPokemonUseCase.call('ivysaur')).called(1);
      },
    );
  });
}
