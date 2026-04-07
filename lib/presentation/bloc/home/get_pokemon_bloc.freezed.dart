// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_pokemon_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetPokemonEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPokemonEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPokemonEvent()';
}


}

/// @nodoc
class $GetPokemonEventCopyWith<$Res>  {
$GetPokemonEventCopyWith(GetPokemonEvent _, $Res Function(GetPokemonEvent) __);
}


/// Adds pattern-matching-related methods to [GetPokemonEvent].
extension GetPokemonEventPatterns on GetPokemonEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetListPokemonEvent value)?  getListPokemon,TResult Function( _FetchNextPageEvent value)?  fetchNextPage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetListPokemonEvent() when getListPokemon != null:
return getListPokemon(_that);case _FetchNextPageEvent() when fetchNextPage != null:
return fetchNextPage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetListPokemonEvent value)  getListPokemon,required TResult Function( _FetchNextPageEvent value)  fetchNextPage,}){
final _that = this;
switch (_that) {
case _GetListPokemonEvent():
return getListPokemon(_that);case _FetchNextPageEvent():
return fetchNextPage(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetListPokemonEvent value)?  getListPokemon,TResult? Function( _FetchNextPageEvent value)?  fetchNextPage,}){
final _that = this;
switch (_that) {
case _GetListPokemonEvent() when getListPokemon != null:
return getListPokemon(_that);case _FetchNextPageEvent() when fetchNextPage != null:
return fetchNextPage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getListPokemon,TResult Function()?  fetchNextPage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetListPokemonEvent() when getListPokemon != null:
return getListPokemon();case _FetchNextPageEvent() when fetchNextPage != null:
return fetchNextPage();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getListPokemon,required TResult Function()  fetchNextPage,}) {final _that = this;
switch (_that) {
case _GetListPokemonEvent():
return getListPokemon();case _FetchNextPageEvent():
return fetchNextPage();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getListPokemon,TResult? Function()?  fetchNextPage,}) {final _that = this;
switch (_that) {
case _GetListPokemonEvent() when getListPokemon != null:
return getListPokemon();case _FetchNextPageEvent() when fetchNextPage != null:
return fetchNextPage();case _:
  return null;

}
}

}

/// @nodoc


class _GetListPokemonEvent implements GetPokemonEvent {
  const _GetListPokemonEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetListPokemonEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPokemonEvent.getListPokemon()';
}


}




/// @nodoc


class _FetchNextPageEvent implements GetPokemonEvent {
  const _FetchNextPageEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchNextPageEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPokemonEvent.fetchNextPage()';
}


}




/// @nodoc
mixin _$GetPokemonState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPokemonState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPokemonState()';
}


}

/// @nodoc
class $GetPokemonStateCopyWith<$Res>  {
$GetPokemonStateCopyWith(GetPokemonState _, $Res Function(GetPokemonState) __);
}


/// Adds pattern-matching-related methods to [GetPokemonState].
extension GetPokemonStatePatterns on GetPokemonState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetPokemonInitial value)?  initial,TResult Function( _GetPokemonLoading value)?  loading,TResult Function( _GetPokemonLoaded value)?  loaded,TResult Function( _GetPokemonError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetPokemonInitial() when initial != null:
return initial(_that);case _GetPokemonLoading() when loading != null:
return loading(_that);case _GetPokemonLoaded() when loaded != null:
return loaded(_that);case _GetPokemonError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetPokemonInitial value)  initial,required TResult Function( _GetPokemonLoading value)  loading,required TResult Function( _GetPokemonLoaded value)  loaded,required TResult Function( _GetPokemonError value)  error,}){
final _that = this;
switch (_that) {
case _GetPokemonInitial():
return initial(_that);case _GetPokemonLoading():
return loading(_that);case _GetPokemonLoaded():
return loaded(_that);case _GetPokemonError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetPokemonInitial value)?  initial,TResult? Function( _GetPokemonLoading value)?  loading,TResult? Function( _GetPokemonLoaded value)?  loaded,TResult? Function( _GetPokemonError value)?  error,}){
final _that = this;
switch (_that) {
case _GetPokemonInitial() when initial != null:
return initial(_that);case _GetPokemonLoading() when loading != null:
return loading(_that);case _GetPokemonLoaded() when loaded != null:
return loaded(_that);case _GetPokemonError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<PokemonEntity> listPokemon,  bool hasReachedMax,  bool isLoadingMore)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetPokemonInitial() when initial != null:
return initial();case _GetPokemonLoading() when loading != null:
return loading();case _GetPokemonLoaded() when loaded != null:
return loaded(_that.listPokemon,_that.hasReachedMax,_that.isLoadingMore);case _GetPokemonError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<PokemonEntity> listPokemon,  bool hasReachedMax,  bool isLoadingMore)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _GetPokemonInitial():
return initial();case _GetPokemonLoading():
return loading();case _GetPokemonLoaded():
return loaded(_that.listPokemon,_that.hasReachedMax,_that.isLoadingMore);case _GetPokemonError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<PokemonEntity> listPokemon,  bool hasReachedMax,  bool isLoadingMore)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _GetPokemonInitial() when initial != null:
return initial();case _GetPokemonLoading() when loading != null:
return loading();case _GetPokemonLoaded() when loaded != null:
return loaded(_that.listPokemon,_that.hasReachedMax,_that.isLoadingMore);case _GetPokemonError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _GetPokemonInitial implements GetPokemonState {
  const _GetPokemonInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPokemonInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPokemonState.initial()';
}


}




/// @nodoc


class _GetPokemonLoading implements GetPokemonState {
  const _GetPokemonLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPokemonLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPokemonState.loading()';
}


}




/// @nodoc


class _GetPokemonLoaded implements GetPokemonState {
  const _GetPokemonLoaded({required final  List<PokemonEntity> listPokemon, required this.hasReachedMax, this.isLoadingMore = false}): _listPokemon = listPokemon;
  

 final  List<PokemonEntity> _listPokemon;
 List<PokemonEntity> get listPokemon {
  if (_listPokemon is EqualUnmodifiableListView) return _listPokemon;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_listPokemon);
}

 final  bool hasReachedMax;
@JsonKey() final  bool isLoadingMore;

/// Create a copy of GetPokemonState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetPokemonLoadedCopyWith<_GetPokemonLoaded> get copyWith => __$GetPokemonLoadedCopyWithImpl<_GetPokemonLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPokemonLoaded&&const DeepCollectionEquality().equals(other._listPokemon, _listPokemon)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_listPokemon),hasReachedMax,isLoadingMore);

@override
String toString() {
  return 'GetPokemonState.loaded(listPokemon: $listPokemon, hasReachedMax: $hasReachedMax, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class _$GetPokemonLoadedCopyWith<$Res> implements $GetPokemonStateCopyWith<$Res> {
  factory _$GetPokemonLoadedCopyWith(_GetPokemonLoaded value, $Res Function(_GetPokemonLoaded) _then) = __$GetPokemonLoadedCopyWithImpl;
@useResult
$Res call({
 List<PokemonEntity> listPokemon, bool hasReachedMax, bool isLoadingMore
});




}
/// @nodoc
class __$GetPokemonLoadedCopyWithImpl<$Res>
    implements _$GetPokemonLoadedCopyWith<$Res> {
  __$GetPokemonLoadedCopyWithImpl(this._self, this._then);

  final _GetPokemonLoaded _self;
  final $Res Function(_GetPokemonLoaded) _then;

/// Create a copy of GetPokemonState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? listPokemon = null,Object? hasReachedMax = null,Object? isLoadingMore = null,}) {
  return _then(_GetPokemonLoaded(
listPokemon: null == listPokemon ? _self._listPokemon : listPokemon // ignore: cast_nullable_to_non_nullable
as List<PokemonEntity>,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _GetPokemonError implements GetPokemonState {
  const _GetPokemonError(this.message);
  

 final  String message;

/// Create a copy of GetPokemonState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetPokemonErrorCopyWith<_GetPokemonError> get copyWith => __$GetPokemonErrorCopyWithImpl<_GetPokemonError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPokemonError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GetPokemonState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$GetPokemonErrorCopyWith<$Res> implements $GetPokemonStateCopyWith<$Res> {
  factory _$GetPokemonErrorCopyWith(_GetPokemonError value, $Res Function(_GetPokemonError) _then) = __$GetPokemonErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$GetPokemonErrorCopyWithImpl<$Res>
    implements _$GetPokemonErrorCopyWith<$Res> {
  __$GetPokemonErrorCopyWithImpl(this._self, this._then);

  final _GetPokemonError _self;
  final $Res Function(_GetPokemonError) _then;

/// Create a copy of GetPokemonState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_GetPokemonError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
