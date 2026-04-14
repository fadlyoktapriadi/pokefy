import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokefy/core/error/failure.dart';
import 'package:pokefy/domain/entity/type/type_defences_entity.dart';
import 'package:pokefy/domain/usecase/get_type_defences_use_case.dart';

part 'type_defences_event.dart';
part 'type_defences_state.dart';
part 'type_defences_bloc.freezed.dart';

class TypeDefencesBloc extends Bloc<TypeDefencesEvent, TypeDefencesState> {
  final GetTypeDefencesUseCase _getTypeDefencesUseCase;

  TypeDefencesBloc(this._getTypeDefencesUseCase)
    : super(const TypeDefencesState.initial()) {
    on<TypeDefencesEvent>((event, emit) async {
      await event.map(
        getTypeDefences: (e) async => _onGetTypeDefences(e.names, emit),
      );
    });
  }

  Future<void> _onGetTypeDefences(
    List<String> names,
    Emitter<TypeDefencesState> emit,
  ) async {
    final typeNames = names
        .map((name) => name.trim().toLowerCase())
        .where((name) => name.isNotEmpty)
        .toSet()
        .toList();

    if (typeNames.isEmpty) {
      emit(const TypeDefencesState.error('Type name is required'));
      return;
    }

    emit(const TypeDefencesState.loading());

    final Set<String> strengths = <String>{};
    final Set<String> vulnerability = <String>{};
    final Set<String> resistances = <String>{};
    final Set<String> immunities = <String>{};

    for (final name in typeNames) {
      final Either<Failure, TypeDefencesEntity> result =
          await _getTypeDefencesUseCase(name);

      final isFailed = result.fold(
        (failure) {
          emit(TypeDefencesState.error(failure.message));
          return true;
        },
        (data) {
          final relations = data.damageRelations;
          strengths.addAll(_extractNames(relations?.doubleDamageTo));
          vulnerability.addAll(_extractNames(relations?.doubleDamageFrom));
          resistances.addAll(_extractNames(relations?.halfDamageFrom));
          immunities.addAll(_extractNames(relations?.noDamageFrom));
          return false;
        },
      );

      if (isFailed) return;
    }

    emit(
      TypeDefencesState.loaded(
        strengths: strengths.toList(),
        vulnerability: vulnerability.toList(),
        resistances: resistances.toList(),
        immunities: immunities.toList(),
      ),
    );
  }

  List<String> _extractNames(List<ItemDamageRelation>? relations) {
    return relations
            ?.map((item) => item.name?.trim().toLowerCase())
            .whereType<String>()
            .where((name) => name.isNotEmpty)
            .toList() ??
        <String>[];
  }
}
