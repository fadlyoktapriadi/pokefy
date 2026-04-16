import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokefy/core/error/failure.dart';
import 'package:pokefy/domain/entity/species/species_entity.dart';
import 'package:pokefy/domain/usecase/get_species_pokemon_use_case.dart';
import 'package:pokefy/presentation/bloc/detail/species/get_species_bloc.dart';

class MockGetSpeciesPokemonUseCase extends Mock
    implements GetSpeciesPokemonUseCase {}

void main() {
  late MockGetSpeciesPokemonUseCase mockGetSpeciesPokemonUseCase;
  late GetSpeciesBloc bloc;

  setUp(() {
    mockGetSpeciesPokemonUseCase = MockGetSpeciesPokemonUseCase();
    bloc = GetSpeciesBloc(mockGetSpeciesPokemonUseCase);
  });

  group('GetSpeciesBloc', () {
    test('initial state is GetSpeciesState.initial()', () {
      expect(bloc.state, const GetSpeciesState.initial());
    });

    blocTest<GetSpeciesBloc, GetSpeciesState>(
      'emits [error] when id is empty',
      build: () => GetSpeciesBloc(mockGetSpeciesPokemonUseCase),
      act: (bloc) => bloc.add(const GetSpeciesEvent.getSpecies(id: '')),
      expect: () => const [
        GetSpeciesState.error('Pokemon id is required'),
      ],
      verify: (_) {
        verifyZeroInteractions(mockGetSpeciesPokemonUseCase);
      },
    );

    blocTest<GetSpeciesBloc, GetSpeciesState>(
      'emits [loading, loaded] when use case returns species',
      build: () {
        const tId = '25';
        const tSpecies = SpeciesEntity(id: 25, name: 'pikachu');
        when(() => mockGetSpeciesPokemonUseCase.call(tId))
            .thenAnswer((_) async => const Right(tSpecies));
        return GetSpeciesBloc(mockGetSpeciesPokemonUseCase);
      },
      act: (bloc) => bloc.add(const GetSpeciesEvent.getSpecies(id: '25')),
      expect: () => const [
        GetSpeciesState.loading(),
        GetSpeciesState.loaded(species: SpeciesEntity(id: 25, name: 'pikachu')),
      ],
      verify: (_) {
        verify(() => mockGetSpeciesPokemonUseCase.call('25')).called(1);
      },
    );

    blocTest<GetSpeciesBloc, GetSpeciesState>(
      'emits [loading, error] when use case returns failure',
      build: () {
        const tId = '25';
        const tFailure = ServerFailure(message: 'Server error');
        when(() => mockGetSpeciesPokemonUseCase.call(tId))
            .thenAnswer((_) async => const Left(tFailure));
        return GetSpeciesBloc(mockGetSpeciesPokemonUseCase);
      },
      act: (bloc) => bloc.add(const GetSpeciesEvent.getSpecies(id: '25')),
      expect: () => const [
        GetSpeciesState.loading(),
        GetSpeciesState.error('Server error'),
      ],
      verify: (_) {
        verify(() => mockGetSpeciesPokemonUseCase.call('25')).called(1);
      },
    );
  });
}
