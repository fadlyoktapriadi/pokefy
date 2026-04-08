part of 'get_species_bloc.dart';

@freezed
class GetSpeciesState with _$GetSpeciesState {
  const factory GetSpeciesState.initial() = _GetSpeciesInitial;
  const factory GetSpeciesState.loading() = _GetSpeciesLoading;
  const factory GetSpeciesState.loaded({required SpeciesEntity species}) = _GetSpeciesLoaded;
  const factory GetSpeciesState.error(String message) = _GetSpeciesError;
}
