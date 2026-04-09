part of 'type_defences_bloc.dart';

@freezed
abstract class TypeDefencesEvent with _$TypeDefencesEvent {
  const factory TypeDefencesEvent.getTypeDefences({required List<String> names}) =
      _GetTypeDefences;
}
