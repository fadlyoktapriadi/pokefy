// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_pokemon_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavoritePokemonEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritePokemonEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoritePokemonEvent()';
}


}

/// @nodoc
class $FavoritePokemonEventCopyWith<$Res>  {
$FavoritePokemonEventCopyWith(FavoritePokemonEvent _, $Res Function(FavoritePokemonEvent) __);
}


/// Adds pattern-matching-related methods to [FavoritePokemonEvent].
extension FavoritePokemonEventPatterns on FavoritePokemonEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CheckStatus value)?  checkStatus,TResult Function( _ToggleFavorite value)?  toggle,TResult Function( _LoadAllFavorites value)?  loadAll,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckStatus() when checkStatus != null:
return checkStatus(_that);case _ToggleFavorite() when toggle != null:
return toggle(_that);case _LoadAllFavorites() when loadAll != null:
return loadAll(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CheckStatus value)  checkStatus,required TResult Function( _ToggleFavorite value)  toggle,required TResult Function( _LoadAllFavorites value)  loadAll,}){
final _that = this;
switch (_that) {
case _CheckStatus():
return checkStatus(_that);case _ToggleFavorite():
return toggle(_that);case _LoadAllFavorites():
return loadAll(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CheckStatus value)?  checkStatus,TResult? Function( _ToggleFavorite value)?  toggle,TResult? Function( _LoadAllFavorites value)?  loadAll,}){
final _that = this;
switch (_that) {
case _CheckStatus() when checkStatus != null:
return checkStatus(_that);case _ToggleFavorite() when toggle != null:
return toggle(_that);case _LoadAllFavorites() when loadAll != null:
return loadAll(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int pokemonId)?  checkStatus,TResult Function( PokemonEntity pokemon)?  toggle,TResult Function()?  loadAll,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckStatus() when checkStatus != null:
return checkStatus(_that.pokemonId);case _ToggleFavorite() when toggle != null:
return toggle(_that.pokemon);case _LoadAllFavorites() when loadAll != null:
return loadAll();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int pokemonId)  checkStatus,required TResult Function( PokemonEntity pokemon)  toggle,required TResult Function()  loadAll,}) {final _that = this;
switch (_that) {
case _CheckStatus():
return checkStatus(_that.pokemonId);case _ToggleFavorite():
return toggle(_that.pokemon);case _LoadAllFavorites():
return loadAll();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int pokemonId)?  checkStatus,TResult? Function( PokemonEntity pokemon)?  toggle,TResult? Function()?  loadAll,}) {final _that = this;
switch (_that) {
case _CheckStatus() when checkStatus != null:
return checkStatus(_that.pokemonId);case _ToggleFavorite() when toggle != null:
return toggle(_that.pokemon);case _LoadAllFavorites() when loadAll != null:
return loadAll();case _:
  return null;

}
}

}

/// @nodoc


class _CheckStatus implements FavoritePokemonEvent {
  const _CheckStatus({required this.pokemonId});
  

 final  int pokemonId;

/// Create a copy of FavoritePokemonEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckStatusCopyWith<_CheckStatus> get copyWith => __$CheckStatusCopyWithImpl<_CheckStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckStatus&&(identical(other.pokemonId, pokemonId) || other.pokemonId == pokemonId));
}


@override
int get hashCode => Object.hash(runtimeType,pokemonId);

@override
String toString() {
  return 'FavoritePokemonEvent.checkStatus(pokemonId: $pokemonId)';
}


}

/// @nodoc
abstract mixin class _$CheckStatusCopyWith<$Res> implements $FavoritePokemonEventCopyWith<$Res> {
  factory _$CheckStatusCopyWith(_CheckStatus value, $Res Function(_CheckStatus) _then) = __$CheckStatusCopyWithImpl;
@useResult
$Res call({
 int pokemonId
});




}
/// @nodoc
class __$CheckStatusCopyWithImpl<$Res>
    implements _$CheckStatusCopyWith<$Res> {
  __$CheckStatusCopyWithImpl(this._self, this._then);

  final _CheckStatus _self;
  final $Res Function(_CheckStatus) _then;

/// Create a copy of FavoritePokemonEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pokemonId = null,}) {
  return _then(_CheckStatus(
pokemonId: null == pokemonId ? _self.pokemonId : pokemonId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _ToggleFavorite implements FavoritePokemonEvent {
  const _ToggleFavorite({required this.pokemon});
  

 final  PokemonEntity pokemon;

/// Create a copy of FavoritePokemonEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToggleFavoriteCopyWith<_ToggleFavorite> get copyWith => __$ToggleFavoriteCopyWithImpl<_ToggleFavorite>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleFavorite&&(identical(other.pokemon, pokemon) || other.pokemon == pokemon));
}


@override
int get hashCode => Object.hash(runtimeType,pokemon);

@override
String toString() {
  return 'FavoritePokemonEvent.toggle(pokemon: $pokemon)';
}


}

/// @nodoc
abstract mixin class _$ToggleFavoriteCopyWith<$Res> implements $FavoritePokemonEventCopyWith<$Res> {
  factory _$ToggleFavoriteCopyWith(_ToggleFavorite value, $Res Function(_ToggleFavorite) _then) = __$ToggleFavoriteCopyWithImpl;
@useResult
$Res call({
 PokemonEntity pokemon
});


$PokemonEntityCopyWith<$Res> get pokemon;

}
/// @nodoc
class __$ToggleFavoriteCopyWithImpl<$Res>
    implements _$ToggleFavoriteCopyWith<$Res> {
  __$ToggleFavoriteCopyWithImpl(this._self, this._then);

  final _ToggleFavorite _self;
  final $Res Function(_ToggleFavorite) _then;

/// Create a copy of FavoritePokemonEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pokemon = null,}) {
  return _then(_ToggleFavorite(
pokemon: null == pokemon ? _self.pokemon : pokemon // ignore: cast_nullable_to_non_nullable
as PokemonEntity,
  ));
}

/// Create a copy of FavoritePokemonEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonEntityCopyWith<$Res> get pokemon {
  
  return $PokemonEntityCopyWith<$Res>(_self.pokemon, (value) {
    return _then(_self.copyWith(pokemon: value));
  });
}
}

/// @nodoc


class _LoadAllFavorites implements FavoritePokemonEvent {
  const _LoadAllFavorites();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadAllFavorites);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoritePokemonEvent.loadAll()';
}


}




/// @nodoc
mixin _$FavoritePokemonState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritePokemonState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoritePokemonState()';
}


}

/// @nodoc
class $FavoritePokemonStateCopyWith<$Res>  {
$FavoritePokemonStateCopyWith(FavoritePokemonState _, $Res Function(FavoritePokemonState) __);
}


/// Adds pattern-matching-related methods to [FavoritePokemonState].
extension FavoritePokemonStatePatterns on FavoritePokemonState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FavoritePokemonInitial value)?  initial,TResult Function( _FavoritePokemonLoading value)?  loading,TResult Function( _FavoritePokemonStatus value)?  status,TResult Function( _FavoritePokemonLoaded value)?  loaded,TResult Function( _FavoritePokemonError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoritePokemonInitial() when initial != null:
return initial(_that);case _FavoritePokemonLoading() when loading != null:
return loading(_that);case _FavoritePokemonStatus() when status != null:
return status(_that);case _FavoritePokemonLoaded() when loaded != null:
return loaded(_that);case _FavoritePokemonError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FavoritePokemonInitial value)  initial,required TResult Function( _FavoritePokemonLoading value)  loading,required TResult Function( _FavoritePokemonStatus value)  status,required TResult Function( _FavoritePokemonLoaded value)  loaded,required TResult Function( _FavoritePokemonError value)  error,}){
final _that = this;
switch (_that) {
case _FavoritePokemonInitial():
return initial(_that);case _FavoritePokemonLoading():
return loading(_that);case _FavoritePokemonStatus():
return status(_that);case _FavoritePokemonLoaded():
return loaded(_that);case _FavoritePokemonError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FavoritePokemonInitial value)?  initial,TResult? Function( _FavoritePokemonLoading value)?  loading,TResult? Function( _FavoritePokemonStatus value)?  status,TResult? Function( _FavoritePokemonLoaded value)?  loaded,TResult? Function( _FavoritePokemonError value)?  error,}){
final _that = this;
switch (_that) {
case _FavoritePokemonInitial() when initial != null:
return initial(_that);case _FavoritePokemonLoading() when loading != null:
return loading(_that);case _FavoritePokemonStatus() when status != null:
return status(_that);case _FavoritePokemonLoaded() when loaded != null:
return loaded(_that);case _FavoritePokemonError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( bool isFavorite)?  status,TResult Function( List<PokemonEntity> favorites)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoritePokemonInitial() when initial != null:
return initial();case _FavoritePokemonLoading() when loading != null:
return loading();case _FavoritePokemonStatus() when status != null:
return status(_that.isFavorite);case _FavoritePokemonLoaded() when loaded != null:
return loaded(_that.favorites);case _FavoritePokemonError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( bool isFavorite)  status,required TResult Function( List<PokemonEntity> favorites)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _FavoritePokemonInitial():
return initial();case _FavoritePokemonLoading():
return loading();case _FavoritePokemonStatus():
return status(_that.isFavorite);case _FavoritePokemonLoaded():
return loaded(_that.favorites);case _FavoritePokemonError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( bool isFavorite)?  status,TResult? Function( List<PokemonEntity> favorites)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _FavoritePokemonInitial() when initial != null:
return initial();case _FavoritePokemonLoading() when loading != null:
return loading();case _FavoritePokemonStatus() when status != null:
return status(_that.isFavorite);case _FavoritePokemonLoaded() when loaded != null:
return loaded(_that.favorites);case _FavoritePokemonError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _FavoritePokemonInitial implements FavoritePokemonState {
  const _FavoritePokemonInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoritePokemonInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoritePokemonState.initial()';
}


}




/// @nodoc


class _FavoritePokemonLoading implements FavoritePokemonState {
  const _FavoritePokemonLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoritePokemonLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoritePokemonState.loading()';
}


}




/// @nodoc


class _FavoritePokemonStatus implements FavoritePokemonState {
  const _FavoritePokemonStatus({required this.isFavorite});
  

 final  bool isFavorite;

/// Create a copy of FavoritePokemonState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoritePokemonStatusCopyWith<_FavoritePokemonStatus> get copyWith => __$FavoritePokemonStatusCopyWithImpl<_FavoritePokemonStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoritePokemonStatus&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}


@override
int get hashCode => Object.hash(runtimeType,isFavorite);

@override
String toString() {
  return 'FavoritePokemonState.status(isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$FavoritePokemonStatusCopyWith<$Res> implements $FavoritePokemonStateCopyWith<$Res> {
  factory _$FavoritePokemonStatusCopyWith(_FavoritePokemonStatus value, $Res Function(_FavoritePokemonStatus) _then) = __$FavoritePokemonStatusCopyWithImpl;
@useResult
$Res call({
 bool isFavorite
});




}
/// @nodoc
class __$FavoritePokemonStatusCopyWithImpl<$Res>
    implements _$FavoritePokemonStatusCopyWith<$Res> {
  __$FavoritePokemonStatusCopyWithImpl(this._self, this._then);

  final _FavoritePokemonStatus _self;
  final $Res Function(_FavoritePokemonStatus) _then;

/// Create a copy of FavoritePokemonState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isFavorite = null,}) {
  return _then(_FavoritePokemonStatus(
isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _FavoritePokemonLoaded implements FavoritePokemonState {
  const _FavoritePokemonLoaded(final  List<PokemonEntity> favorites): _favorites = favorites;
  

 final  List<PokemonEntity> _favorites;
 List<PokemonEntity> get favorites {
  if (_favorites is EqualUnmodifiableListView) return _favorites;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_favorites);
}


/// Create a copy of FavoritePokemonState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoritePokemonLoadedCopyWith<_FavoritePokemonLoaded> get copyWith => __$FavoritePokemonLoadedCopyWithImpl<_FavoritePokemonLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoritePokemonLoaded&&const DeepCollectionEquality().equals(other._favorites, _favorites));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_favorites));

@override
String toString() {
  return 'FavoritePokemonState.loaded(favorites: $favorites)';
}


}

/// @nodoc
abstract mixin class _$FavoritePokemonLoadedCopyWith<$Res> implements $FavoritePokemonStateCopyWith<$Res> {
  factory _$FavoritePokemonLoadedCopyWith(_FavoritePokemonLoaded value, $Res Function(_FavoritePokemonLoaded) _then) = __$FavoritePokemonLoadedCopyWithImpl;
@useResult
$Res call({
 List<PokemonEntity> favorites
});




}
/// @nodoc
class __$FavoritePokemonLoadedCopyWithImpl<$Res>
    implements _$FavoritePokemonLoadedCopyWith<$Res> {
  __$FavoritePokemonLoadedCopyWithImpl(this._self, this._then);

  final _FavoritePokemonLoaded _self;
  final $Res Function(_FavoritePokemonLoaded) _then;

/// Create a copy of FavoritePokemonState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? favorites = null,}) {
  return _then(_FavoritePokemonLoaded(
null == favorites ? _self._favorites : favorites // ignore: cast_nullable_to_non_nullable
as List<PokemonEntity>,
  ));
}


}

/// @nodoc


class _FavoritePokemonError implements FavoritePokemonState {
  const _FavoritePokemonError(this.message);
  

 final  String message;

/// Create a copy of FavoritePokemonState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoritePokemonErrorCopyWith<_FavoritePokemonError> get copyWith => __$FavoritePokemonErrorCopyWithImpl<_FavoritePokemonError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoritePokemonError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'FavoritePokemonState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$FavoritePokemonErrorCopyWith<$Res> implements $FavoritePokemonStateCopyWith<$Res> {
  factory _$FavoritePokemonErrorCopyWith(_FavoritePokemonError value, $Res Function(_FavoritePokemonError) _then) = __$FavoritePokemonErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$FavoritePokemonErrorCopyWithImpl<$Res>
    implements _$FavoritePokemonErrorCopyWith<$Res> {
  __$FavoritePokemonErrorCopyWithImpl(this._self, this._then);

  final _FavoritePokemonError _self;
  final $Res Function(_FavoritePokemonError) _then;

/// Create a copy of FavoritePokemonState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_FavoritePokemonError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
