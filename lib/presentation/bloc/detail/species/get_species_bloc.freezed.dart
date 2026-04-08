// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_species_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetSpeciesEvent {

 String get id;
/// Create a copy of GetSpeciesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetSpeciesEventCopyWith<GetSpeciesEvent> get copyWith => _$GetSpeciesEventCopyWithImpl<GetSpeciesEvent>(this as GetSpeciesEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetSpeciesEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'GetSpeciesEvent(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetSpeciesEventCopyWith<$Res>  {
  factory $GetSpeciesEventCopyWith(GetSpeciesEvent value, $Res Function(GetSpeciesEvent) _then) = _$GetSpeciesEventCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetSpeciesEventCopyWithImpl<$Res>
    implements $GetSpeciesEventCopyWith<$Res> {
  _$GetSpeciesEventCopyWithImpl(this._self, this._then);

  final GetSpeciesEvent _self;
  final $Res Function(GetSpeciesEvent) _then;

/// Create a copy of GetSpeciesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetSpeciesEvent].
extension GetSpeciesEventPatterns on GetSpeciesEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetSpecies value)?  getSpecies,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetSpecies() when getSpecies != null:
return getSpecies(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetSpecies value)  getSpecies,}){
final _that = this;
switch (_that) {
case _GetSpecies():
return getSpecies(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetSpecies value)?  getSpecies,}){
final _that = this;
switch (_that) {
case _GetSpecies() when getSpecies != null:
return getSpecies(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id)?  getSpecies,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetSpecies() when getSpecies != null:
return getSpecies(_that.id);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id)  getSpecies,}) {final _that = this;
switch (_that) {
case _GetSpecies():
return getSpecies(_that.id);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id)?  getSpecies,}) {final _that = this;
switch (_that) {
case _GetSpecies() when getSpecies != null:
return getSpecies(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _GetSpecies implements GetSpeciesEvent {
  const _GetSpecies({required this.id});
  

@override final  String id;

/// Create a copy of GetSpeciesEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSpeciesCopyWith<_GetSpecies> get copyWith => __$GetSpeciesCopyWithImpl<_GetSpecies>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSpecies&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'GetSpeciesEvent.getSpecies(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetSpeciesCopyWith<$Res> implements $GetSpeciesEventCopyWith<$Res> {
  factory _$GetSpeciesCopyWith(_GetSpecies value, $Res Function(_GetSpecies) _then) = __$GetSpeciesCopyWithImpl;
@override @useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetSpeciesCopyWithImpl<$Res>
    implements _$GetSpeciesCopyWith<$Res> {
  __$GetSpeciesCopyWithImpl(this._self, this._then);

  final _GetSpecies _self;
  final $Res Function(_GetSpecies) _then;

/// Create a copy of GetSpeciesEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetSpecies(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$GetSpeciesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetSpeciesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetSpeciesState()';
}


}

/// @nodoc
class $GetSpeciesStateCopyWith<$Res>  {
$GetSpeciesStateCopyWith(GetSpeciesState _, $Res Function(GetSpeciesState) __);
}


/// Adds pattern-matching-related methods to [GetSpeciesState].
extension GetSpeciesStatePatterns on GetSpeciesState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetSpeciesInitial value)?  initial,TResult Function( _GetSpeciesLoading value)?  loading,TResult Function( _GetSpeciesLoaded value)?  loaded,TResult Function( _GetSpeciesError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetSpeciesInitial() when initial != null:
return initial(_that);case _GetSpeciesLoading() when loading != null:
return loading(_that);case _GetSpeciesLoaded() when loaded != null:
return loaded(_that);case _GetSpeciesError() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetSpeciesInitial value)  initial,required TResult Function( _GetSpeciesLoading value)  loading,required TResult Function( _GetSpeciesLoaded value)  loaded,required TResult Function( _GetSpeciesError value)  error,}){
final _that = this;
switch (_that) {
case _GetSpeciesInitial():
return initial(_that);case _GetSpeciesLoading():
return loading(_that);case _GetSpeciesLoaded():
return loaded(_that);case _GetSpeciesError():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetSpeciesInitial value)?  initial,TResult? Function( _GetSpeciesLoading value)?  loading,TResult? Function( _GetSpeciesLoaded value)?  loaded,TResult? Function( _GetSpeciesError value)?  error,}){
final _that = this;
switch (_that) {
case _GetSpeciesInitial() when initial != null:
return initial(_that);case _GetSpeciesLoading() when loading != null:
return loading(_that);case _GetSpeciesLoaded() when loaded != null:
return loaded(_that);case _GetSpeciesError() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( SpeciesEntity species)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetSpeciesInitial() when initial != null:
return initial();case _GetSpeciesLoading() when loading != null:
return loading();case _GetSpeciesLoaded() when loaded != null:
return loaded(_that.species);case _GetSpeciesError() when error != null:
return error(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( SpeciesEntity species)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _GetSpeciesInitial():
return initial();case _GetSpeciesLoading():
return loading();case _GetSpeciesLoaded():
return loaded(_that.species);case _GetSpeciesError():
return error(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( SpeciesEntity species)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _GetSpeciesInitial() when initial != null:
return initial();case _GetSpeciesLoading() when loading != null:
return loading();case _GetSpeciesLoaded() when loaded != null:
return loaded(_that.species);case _GetSpeciesError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _GetSpeciesInitial implements GetSpeciesState {
  const _GetSpeciesInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSpeciesInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetSpeciesState.initial()';
}


}




/// @nodoc


class _GetSpeciesLoading implements GetSpeciesState {
  const _GetSpeciesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSpeciesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetSpeciesState.loading()';
}


}




/// @nodoc


class _GetSpeciesLoaded implements GetSpeciesState {
  const _GetSpeciesLoaded({required this.species});
  

 final  SpeciesEntity species;

/// Create a copy of GetSpeciesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSpeciesLoadedCopyWith<_GetSpeciesLoaded> get copyWith => __$GetSpeciesLoadedCopyWithImpl<_GetSpeciesLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSpeciesLoaded&&(identical(other.species, species) || other.species == species));
}


@override
int get hashCode => Object.hash(runtimeType,species);

@override
String toString() {
  return 'GetSpeciesState.loaded(species: $species)';
}


}

/// @nodoc
abstract mixin class _$GetSpeciesLoadedCopyWith<$Res> implements $GetSpeciesStateCopyWith<$Res> {
  factory _$GetSpeciesLoadedCopyWith(_GetSpeciesLoaded value, $Res Function(_GetSpeciesLoaded) _then) = __$GetSpeciesLoadedCopyWithImpl;
@useResult
$Res call({
 SpeciesEntity species
});


$SpeciesEntityCopyWith<$Res> get species;

}
/// @nodoc
class __$GetSpeciesLoadedCopyWithImpl<$Res>
    implements _$GetSpeciesLoadedCopyWith<$Res> {
  __$GetSpeciesLoadedCopyWithImpl(this._self, this._then);

  final _GetSpeciesLoaded _self;
  final $Res Function(_GetSpeciesLoaded) _then;

/// Create a copy of GetSpeciesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? species = null,}) {
  return _then(_GetSpeciesLoaded(
species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as SpeciesEntity,
  ));
}

/// Create a copy of GetSpeciesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesEntityCopyWith<$Res> get species {
  
  return $SpeciesEntityCopyWith<$Res>(_self.species, (value) {
    return _then(_self.copyWith(species: value));
  });
}
}

/// @nodoc


class _GetSpeciesError implements GetSpeciesState {
  const _GetSpeciesError(this.message);
  

 final  String message;

/// Create a copy of GetSpeciesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSpeciesErrorCopyWith<_GetSpeciesError> get copyWith => __$GetSpeciesErrorCopyWithImpl<_GetSpeciesError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSpeciesError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GetSpeciesState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$GetSpeciesErrorCopyWith<$Res> implements $GetSpeciesStateCopyWith<$Res> {
  factory _$GetSpeciesErrorCopyWith(_GetSpeciesError value, $Res Function(_GetSpeciesError) _then) = __$GetSpeciesErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$GetSpeciesErrorCopyWithImpl<$Res>
    implements _$GetSpeciesErrorCopyWith<$Res> {
  __$GetSpeciesErrorCopyWithImpl(this._self, this._then);

  final _GetSpeciesError _self;
  final $Res Function(_GetSpeciesError) _then;

/// Create a copy of GetSpeciesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_GetSpeciesError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
