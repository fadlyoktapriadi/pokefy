part of 'type_defences_bloc.dart';

@freezed
abstract class TypeDefencesState with _$TypeDefencesState {
  const factory TypeDefencesState.initial() = _GetTypeDefencesInitial;
  const factory TypeDefencesState.loading() = _GetTypeDefencesLoading;
  const factory TypeDefencesState.loaded({
    required List<String> vulnerability,
    required List<String> strengths,
    required List<String> resistances,
    required List<String> immunities,
  }) = _GetTypeDefencesLoaded;
  const factory TypeDefencesState.error(String message) = _GetTypeDefencesError;
}
