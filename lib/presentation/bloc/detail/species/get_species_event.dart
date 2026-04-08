part of 'get_species_bloc.dart';

@freezed
abstract class GetSpeciesEvent with _$GetSpeciesEvent {
  const factory GetSpeciesEvent.getSpecies({required String id}) = _GetSpecies;
}
