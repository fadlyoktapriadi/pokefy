import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokefy/core/error/failure.dart';
import 'package:pokefy/domain/entity/type/type_defences_entity.dart';
import 'package:pokefy/domain/usecase/get_type_defences_use_case.dart';
import 'package:pokefy/presentation/bloc/detail/type_defences/type_defences_bloc.dart';

class MockGetTypeDefencesUseCase extends Mock implements GetTypeDefencesUseCase {}

void main() {
  late MockGetTypeDefencesUseCase mockGetTypeDefencesUseCase;

  setUp(() {
    mockGetTypeDefencesUseCase = MockGetTypeDefencesUseCase();
  });

  TypeDefencesBloc buildBloc() => TypeDefencesBloc(mockGetTypeDefencesUseCase);

  group('TypeDefencesBloc', () {
    test('initial state is TypeDefencesState.initial()', () {
      expect(buildBloc().state, const TypeDefencesState.initial());
    });

    blocTest<TypeDefencesBloc, TypeDefencesState>(
      'emits [error] when all names are empty/blank',
      build: buildBloc,
      act: (bloc) => bloc.add(
        const TypeDefencesEvent.getTypeDefences(names: [' ', '', '   ']),
      ),
      expect: () => const [
        TypeDefencesState.error('Type name is required'),
      ],
      verify: (_) {
        verifyZeroInteractions(mockGetTypeDefencesUseCase);
      },
    );

    blocTest<TypeDefencesBloc, TypeDefencesState>(
      'emits [loading, loaded] and aggregates normalized relations from unique type names',
      build: () {
        const fireEntity = TypeDefencesEntity(
          damageRelations: DamageRelations(
            doubleDamageTo: [
              ItemDamageRelation(name: ' Grass '),
            ],
            doubleDamageFrom: [
              ItemDamageRelation(name: 'WATER'),
            ],
            halfDamageFrom: [
              ItemDamageRelation(name: 'fire'),
            ],
            noDamageFrom: [
              ItemDamageRelation(name: '  '), // filtered out
              ItemDamageRelation(name: 'ground'),
            ],
          ),
        );

        const waterEntity = TypeDefencesEntity(
          damageRelations: DamageRelations(
            doubleDamageTo: [
              ItemDamageRelation(name: 'fire'),
            ],
            doubleDamageFrom: [
              ItemDamageRelation(name: 'electric'),
            ],
            halfDamageFrom: [
              ItemDamageRelation(name: ' ice '),
            ],
            noDamageFrom: [
              ItemDamageRelation(name: null), // filtered out
            ],
          ),
        );

        when(() => mockGetTypeDefencesUseCase.call('fire'))
            .thenAnswer((_) async => const Right(fireEntity));
        when(() => mockGetTypeDefencesUseCase.call('water'))
            .thenAnswer((_) async => const Right(waterEntity));

        return buildBloc();
      },
      act: (bloc) => bloc.add(
        const TypeDefencesEvent.getTypeDefences(
          names: [' Fire ', 'WATER', 'fire', ''],
        ),
      ),
      expect: () => [
        const TypeDefencesState.loading(),
        isA<TypeDefencesState>().having(
              (state) => state.maybeWhen(
            loaded: (vulnerability, strengths, resistances, immunities) {
              final okStrengths = strengths.toSet().containsAll({'grass', 'fire'});
              final okVulnerability =
              vulnerability.toSet().containsAll({'water', 'electric'});
              final okResistances = resistances.toSet().containsAll({'fire', 'ice'});
              final okImmunities = immunities.toSet().contains('ground');
              return okStrengths &&
                  okVulnerability &&
                  okResistances &&
                  okImmunities;
            },
            orElse: () => false,
          ),
          'loaded data should be aggregated and normalized',
          true,
        ),
      ],
      verify: (_) {
        // fire should be requested once even though provided twice (dedup by set)
        verify(() => mockGetTypeDefencesUseCase.call('fire')).called(1);
        verify(() => mockGetTypeDefencesUseCase.call('water')).called(1);
      },
    );

    blocTest<TypeDefencesBloc, TypeDefencesState>(
      'emits [loading, error] and stops loop when first type fails',
      build: () {
        when(() => mockGetTypeDefencesUseCase.call('water')).thenAnswer(
              (_) async => const Left(ServerFailure(message: 'network error')),
        );
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        const TypeDefencesEvent.getTypeDefences(
          names: ['water', 'fire'],
        ),
      ),
      expect: () => const [
        TypeDefencesState.loading(),
        TypeDefencesState.error('network error'),
      ],
      verify: (_) {
        verify(() => mockGetTypeDefencesUseCase.call('water')).called(1);
        verifyNever(() => mockGetTypeDefencesUseCase.call('fire'));
      },
    );

    blocTest<TypeDefencesBloc, TypeDefencesState>(
      'emits [loading, loaded] with empty lists when damageRelations is null',
      build: () {
        const entity = TypeDefencesEntity(damageRelations: null);
        when(() => mockGetTypeDefencesUseCase.call('ghost'))
            .thenAnswer((_) async => const Right(entity));
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        const TypeDefencesEvent.getTypeDefences(names: ['ghost']),
      ),
      expect: () => const [
        TypeDefencesState.loading(),
        TypeDefencesState.loaded(
          vulnerability: [],
          strengths: [],
          resistances: [],
          immunities: [],
        ),
      ],
      verify: (_) {
        verify(() => mockGetTypeDefencesUseCase.call('ghost')).called(1);
      },
    );
  });
}
