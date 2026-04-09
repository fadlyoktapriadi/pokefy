// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'type_defences_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TypeDefencesEvent {

 List<String> get names;
/// Create a copy of TypeDefencesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypeDefencesEventCopyWith<TypeDefencesEvent> get copyWith => _$TypeDefencesEventCopyWithImpl<TypeDefencesEvent>(this as TypeDefencesEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypeDefencesEvent&&const DeepCollectionEquality().equals(other.names, names));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(names));

@override
String toString() {
  return 'TypeDefencesEvent(names: $names)';
}


}

/// @nodoc
abstract mixin class $TypeDefencesEventCopyWith<$Res>  {
  factory $TypeDefencesEventCopyWith(TypeDefencesEvent value, $Res Function(TypeDefencesEvent) _then) = _$TypeDefencesEventCopyWithImpl;
@useResult
$Res call({
 List<String> names
});




}
/// @nodoc
class _$TypeDefencesEventCopyWithImpl<$Res>
    implements $TypeDefencesEventCopyWith<$Res> {
  _$TypeDefencesEventCopyWithImpl(this._self, this._then);

  final TypeDefencesEvent _self;
  final $Res Function(TypeDefencesEvent) _then;

/// Create a copy of TypeDefencesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? names = null,}) {
  return _then(_self.copyWith(
names: null == names ? _self.names : names // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [TypeDefencesEvent].
extension TypeDefencesEventPatterns on TypeDefencesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetTypeDefences value)?  getTypeDefences,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetTypeDefences() when getTypeDefences != null:
return getTypeDefences(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetTypeDefences value)  getTypeDefences,}){
final _that = this;
switch (_that) {
case _GetTypeDefences():
return getTypeDefences(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetTypeDefences value)?  getTypeDefences,}){
final _that = this;
switch (_that) {
case _GetTypeDefences() when getTypeDefences != null:
return getTypeDefences(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<String> names)?  getTypeDefences,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetTypeDefences() when getTypeDefences != null:
return getTypeDefences(_that.names);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<String> names)  getTypeDefences,}) {final _that = this;
switch (_that) {
case _GetTypeDefences():
return getTypeDefences(_that.names);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<String> names)?  getTypeDefences,}) {final _that = this;
switch (_that) {
case _GetTypeDefences() when getTypeDefences != null:
return getTypeDefences(_that.names);case _:
  return null;

}
}

}

/// @nodoc


class _GetTypeDefences implements TypeDefencesEvent {
  const _GetTypeDefences({required final  List<String> names}): _names = names;
  

 final  List<String> _names;
@override List<String> get names {
  if (_names is EqualUnmodifiableListView) return _names;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_names);
}


/// Create a copy of TypeDefencesEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTypeDefencesCopyWith<_GetTypeDefences> get copyWith => __$GetTypeDefencesCopyWithImpl<_GetTypeDefences>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTypeDefences&&const DeepCollectionEquality().equals(other._names, _names));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_names));

@override
String toString() {
  return 'TypeDefencesEvent.getTypeDefences(names: $names)';
}


}

/// @nodoc
abstract mixin class _$GetTypeDefencesCopyWith<$Res> implements $TypeDefencesEventCopyWith<$Res> {
  factory _$GetTypeDefencesCopyWith(_GetTypeDefences value, $Res Function(_GetTypeDefences) _then) = __$GetTypeDefencesCopyWithImpl;
@override @useResult
$Res call({
 List<String> names
});




}
/// @nodoc
class __$GetTypeDefencesCopyWithImpl<$Res>
    implements _$GetTypeDefencesCopyWith<$Res> {
  __$GetTypeDefencesCopyWithImpl(this._self, this._then);

  final _GetTypeDefences _self;
  final $Res Function(_GetTypeDefences) _then;

/// Create a copy of TypeDefencesEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? names = null,}) {
  return _then(_GetTypeDefences(
names: null == names ? _self._names : names // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc
mixin _$TypeDefencesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypeDefencesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TypeDefencesState()';
}


}

/// @nodoc
class $TypeDefencesStateCopyWith<$Res>  {
$TypeDefencesStateCopyWith(TypeDefencesState _, $Res Function(TypeDefencesState) __);
}


/// Adds pattern-matching-related methods to [TypeDefencesState].
extension TypeDefencesStatePatterns on TypeDefencesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetTypeDefencesInitial value)?  initial,TResult Function( _GetTypeDefencesLoading value)?  loading,TResult Function( _GetTypeDefencesLoaded value)?  loaded,TResult Function( _GetTypeDefencesError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetTypeDefencesInitial() when initial != null:
return initial(_that);case _GetTypeDefencesLoading() when loading != null:
return loading(_that);case _GetTypeDefencesLoaded() when loaded != null:
return loaded(_that);case _GetTypeDefencesError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetTypeDefencesInitial value)  initial,required TResult Function( _GetTypeDefencesLoading value)  loading,required TResult Function( _GetTypeDefencesLoaded value)  loaded,required TResult Function( _GetTypeDefencesError value)  error,}){
final _that = this;
switch (_that) {
case _GetTypeDefencesInitial():
return initial(_that);case _GetTypeDefencesLoading():
return loading(_that);case _GetTypeDefencesLoaded():
return loaded(_that);case _GetTypeDefencesError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetTypeDefencesInitial value)?  initial,TResult? Function( _GetTypeDefencesLoading value)?  loading,TResult? Function( _GetTypeDefencesLoaded value)?  loaded,TResult? Function( _GetTypeDefencesError value)?  error,}){
final _that = this;
switch (_that) {
case _GetTypeDefencesInitial() when initial != null:
return initial(_that);case _GetTypeDefencesLoading() when loading != null:
return loading(_that);case _GetTypeDefencesLoaded() when loaded != null:
return loaded(_that);case _GetTypeDefencesError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<String> vulnerability,  List<String> strengths,  List<String> resistances,  List<String> immunities)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetTypeDefencesInitial() when initial != null:
return initial();case _GetTypeDefencesLoading() when loading != null:
return loading();case _GetTypeDefencesLoaded() when loaded != null:
return loaded(_that.vulnerability,_that.strengths,_that.resistances,_that.immunities);case _GetTypeDefencesError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<String> vulnerability,  List<String> strengths,  List<String> resistances,  List<String> immunities)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _GetTypeDefencesInitial():
return initial();case _GetTypeDefencesLoading():
return loading();case _GetTypeDefencesLoaded():
return loaded(_that.vulnerability,_that.strengths,_that.resistances,_that.immunities);case _GetTypeDefencesError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<String> vulnerability,  List<String> strengths,  List<String> resistances,  List<String> immunities)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _GetTypeDefencesInitial() when initial != null:
return initial();case _GetTypeDefencesLoading() when loading != null:
return loading();case _GetTypeDefencesLoaded() when loaded != null:
return loaded(_that.vulnerability,_that.strengths,_that.resistances,_that.immunities);case _GetTypeDefencesError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _GetTypeDefencesInitial implements TypeDefencesState {
  const _GetTypeDefencesInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTypeDefencesInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TypeDefencesState.initial()';
}


}




/// @nodoc


class _GetTypeDefencesLoading implements TypeDefencesState {
  const _GetTypeDefencesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTypeDefencesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TypeDefencesState.loading()';
}


}




/// @nodoc


class _GetTypeDefencesLoaded implements TypeDefencesState {
  const _GetTypeDefencesLoaded({required final  List<String> vulnerability, required final  List<String> strengths, required final  List<String> resistances, required final  List<String> immunities}): _vulnerability = vulnerability,_strengths = strengths,_resistances = resistances,_immunities = immunities;
  

 final  List<String> _vulnerability;
 List<String> get vulnerability {
  if (_vulnerability is EqualUnmodifiableListView) return _vulnerability;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_vulnerability);
}

 final  List<String> _strengths;
 List<String> get strengths {
  if (_strengths is EqualUnmodifiableListView) return _strengths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_strengths);
}

 final  List<String> _resistances;
 List<String> get resistances {
  if (_resistances is EqualUnmodifiableListView) return _resistances;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_resistances);
}

 final  List<String> _immunities;
 List<String> get immunities {
  if (_immunities is EqualUnmodifiableListView) return _immunities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_immunities);
}


/// Create a copy of TypeDefencesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTypeDefencesLoadedCopyWith<_GetTypeDefencesLoaded> get copyWith => __$GetTypeDefencesLoadedCopyWithImpl<_GetTypeDefencesLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTypeDefencesLoaded&&const DeepCollectionEquality().equals(other._vulnerability, _vulnerability)&&const DeepCollectionEquality().equals(other._strengths, _strengths)&&const DeepCollectionEquality().equals(other._resistances, _resistances)&&const DeepCollectionEquality().equals(other._immunities, _immunities));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_vulnerability),const DeepCollectionEquality().hash(_strengths),const DeepCollectionEquality().hash(_resistances),const DeepCollectionEquality().hash(_immunities));

@override
String toString() {
  return 'TypeDefencesState.loaded(vulnerability: $vulnerability, strengths: $strengths, resistances: $resistances, immunities: $immunities)';
}


}

/// @nodoc
abstract mixin class _$GetTypeDefencesLoadedCopyWith<$Res> implements $TypeDefencesStateCopyWith<$Res> {
  factory _$GetTypeDefencesLoadedCopyWith(_GetTypeDefencesLoaded value, $Res Function(_GetTypeDefencesLoaded) _then) = __$GetTypeDefencesLoadedCopyWithImpl;
@useResult
$Res call({
 List<String> vulnerability, List<String> strengths, List<String> resistances, List<String> immunities
});




}
/// @nodoc
class __$GetTypeDefencesLoadedCopyWithImpl<$Res>
    implements _$GetTypeDefencesLoadedCopyWith<$Res> {
  __$GetTypeDefencesLoadedCopyWithImpl(this._self, this._then);

  final _GetTypeDefencesLoaded _self;
  final $Res Function(_GetTypeDefencesLoaded) _then;

/// Create a copy of TypeDefencesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? vulnerability = null,Object? strengths = null,Object? resistances = null,Object? immunities = null,}) {
  return _then(_GetTypeDefencesLoaded(
vulnerability: null == vulnerability ? _self._vulnerability : vulnerability // ignore: cast_nullable_to_non_nullable
as List<String>,strengths: null == strengths ? _self._strengths : strengths // ignore: cast_nullable_to_non_nullable
as List<String>,resistances: null == resistances ? _self._resistances : resistances // ignore: cast_nullable_to_non_nullable
as List<String>,immunities: null == immunities ? _self._immunities : immunities // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _GetTypeDefencesError implements TypeDefencesState {
  const _GetTypeDefencesError(this.message);
  

 final  String message;

/// Create a copy of TypeDefencesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTypeDefencesErrorCopyWith<_GetTypeDefencesError> get copyWith => __$GetTypeDefencesErrorCopyWithImpl<_GetTypeDefencesError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTypeDefencesError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TypeDefencesState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$GetTypeDefencesErrorCopyWith<$Res> implements $TypeDefencesStateCopyWith<$Res> {
  factory _$GetTypeDefencesErrorCopyWith(_GetTypeDefencesError value, $Res Function(_GetTypeDefencesError) _then) = __$GetTypeDefencesErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$GetTypeDefencesErrorCopyWithImpl<$Res>
    implements _$GetTypeDefencesErrorCopyWith<$Res> {
  __$GetTypeDefencesErrorCopyWithImpl(this._self, this._then);

  final _GetTypeDefencesError _self;
  final $Res Function(_GetTypeDefencesError) _then;

/// Create a copy of TypeDefencesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_GetTypeDefencesError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
