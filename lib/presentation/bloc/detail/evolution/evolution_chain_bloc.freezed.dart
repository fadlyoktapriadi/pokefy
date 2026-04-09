// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evolution_chain_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EvolutionChainEvent {

 String get id;
/// Create a copy of EvolutionChainEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EvolutionChainEventCopyWith<EvolutionChainEvent> get copyWith => _$EvolutionChainEventCopyWithImpl<EvolutionChainEvent>(this as EvolutionChainEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EvolutionChainEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'EvolutionChainEvent(id: $id)';
}


}

/// @nodoc
abstract mixin class $EvolutionChainEventCopyWith<$Res>  {
  factory $EvolutionChainEventCopyWith(EvolutionChainEvent value, $Res Function(EvolutionChainEvent) _then) = _$EvolutionChainEventCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$EvolutionChainEventCopyWithImpl<$Res>
    implements $EvolutionChainEventCopyWith<$Res> {
  _$EvolutionChainEventCopyWithImpl(this._self, this._then);

  final EvolutionChainEvent _self;
  final $Res Function(EvolutionChainEvent) _then;

/// Create a copy of EvolutionChainEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EvolutionChainEvent].
extension EvolutionChainEventPatterns on EvolutionChainEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetEvolutionChain value)?  getEvolutionChain,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetEvolutionChain() when getEvolutionChain != null:
return getEvolutionChain(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetEvolutionChain value)  getEvolutionChain,}){
final _that = this;
switch (_that) {
case _GetEvolutionChain():
return getEvolutionChain(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetEvolutionChain value)?  getEvolutionChain,}){
final _that = this;
switch (_that) {
case _GetEvolutionChain() when getEvolutionChain != null:
return getEvolutionChain(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id)?  getEvolutionChain,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetEvolutionChain() when getEvolutionChain != null:
return getEvolutionChain(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id)  getEvolutionChain,}) {final _that = this;
switch (_that) {
case _GetEvolutionChain():
return getEvolutionChain(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id)?  getEvolutionChain,}) {final _that = this;
switch (_that) {
case _GetEvolutionChain() when getEvolutionChain != null:
return getEvolutionChain(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _GetEvolutionChain implements EvolutionChainEvent {
  const _GetEvolutionChain({required this.id});
  

@override final  String id;

/// Create a copy of EvolutionChainEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetEvolutionChainCopyWith<_GetEvolutionChain> get copyWith => __$GetEvolutionChainCopyWithImpl<_GetEvolutionChain>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetEvolutionChain&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'EvolutionChainEvent.getEvolutionChain(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetEvolutionChainCopyWith<$Res> implements $EvolutionChainEventCopyWith<$Res> {
  factory _$GetEvolutionChainCopyWith(_GetEvolutionChain value, $Res Function(_GetEvolutionChain) _then) = __$GetEvolutionChainCopyWithImpl;
@override @useResult
$Res call({
 String id
});




}
/// @nodoc
class __$GetEvolutionChainCopyWithImpl<$Res>
    implements _$GetEvolutionChainCopyWith<$Res> {
  __$GetEvolutionChainCopyWithImpl(this._self, this._then);

  final _GetEvolutionChain _self;
  final $Res Function(_GetEvolutionChain) _then;

/// Create a copy of EvolutionChainEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetEvolutionChain(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$EvolutionChainState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EvolutionChainState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EvolutionChainState()';
}


}

/// @nodoc
class $EvolutionChainStateCopyWith<$Res>  {
$EvolutionChainStateCopyWith(EvolutionChainState _, $Res Function(EvolutionChainState) __);
}


/// Adds pattern-matching-related methods to [EvolutionChainState].
extension EvolutionChainStatePatterns on EvolutionChainState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _EvolutionChainInitial value)?  initial,TResult Function( _EvolutionChainLoading value)?  loading,TResult Function( _EvolutionChainLoaded value)?  loaded,TResult Function( _EvolutionChainError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EvolutionChainInitial() when initial != null:
return initial(_that);case _EvolutionChainLoading() when loading != null:
return loading(_that);case _EvolutionChainLoaded() when loaded != null:
return loaded(_that);case _EvolutionChainError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _EvolutionChainInitial value)  initial,required TResult Function( _EvolutionChainLoading value)  loading,required TResult Function( _EvolutionChainLoaded value)  loaded,required TResult Function( _EvolutionChainError value)  error,}){
final _that = this;
switch (_that) {
case _EvolutionChainInitial():
return initial(_that);case _EvolutionChainLoading():
return loading(_that);case _EvolutionChainLoaded():
return loaded(_that);case _EvolutionChainError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _EvolutionChainInitial value)?  initial,TResult? Function( _EvolutionChainLoading value)?  loading,TResult? Function( _EvolutionChainLoaded value)?  loaded,TResult? Function( _EvolutionChainError value)?  error,}){
final _that = this;
switch (_that) {
case _EvolutionChainInitial() when initial != null:
return initial(_that);case _EvolutionChainLoading() when loading != null:
return loading(_that);case _EvolutionChainLoaded() when loaded != null:
return loaded(_that);case _EvolutionChainError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( EvolutionChainEntity evolution)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EvolutionChainInitial() when initial != null:
return initial();case _EvolutionChainLoading() when loading != null:
return loading();case _EvolutionChainLoaded() when loaded != null:
return loaded(_that.evolution);case _EvolutionChainError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( EvolutionChainEntity evolution)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _EvolutionChainInitial():
return initial();case _EvolutionChainLoading():
return loading();case _EvolutionChainLoaded():
return loaded(_that.evolution);case _EvolutionChainError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( EvolutionChainEntity evolution)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _EvolutionChainInitial() when initial != null:
return initial();case _EvolutionChainLoading() when loading != null:
return loading();case _EvolutionChainLoaded() when loaded != null:
return loaded(_that.evolution);case _EvolutionChainError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _EvolutionChainInitial implements EvolutionChainState {
  const _EvolutionChainInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EvolutionChainInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EvolutionChainState.initial()';
}


}




/// @nodoc


class _EvolutionChainLoading implements EvolutionChainState {
  const _EvolutionChainLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EvolutionChainLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EvolutionChainState.loading()';
}


}




/// @nodoc


class _EvolutionChainLoaded implements EvolutionChainState {
  const _EvolutionChainLoaded({required this.evolution});
  

 final  EvolutionChainEntity evolution;

/// Create a copy of EvolutionChainState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EvolutionChainLoadedCopyWith<_EvolutionChainLoaded> get copyWith => __$EvolutionChainLoadedCopyWithImpl<_EvolutionChainLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EvolutionChainLoaded&&(identical(other.evolution, evolution) || other.evolution == evolution));
}


@override
int get hashCode => Object.hash(runtimeType,evolution);

@override
String toString() {
  return 'EvolutionChainState.loaded(evolution: $evolution)';
}


}

/// @nodoc
abstract mixin class _$EvolutionChainLoadedCopyWith<$Res> implements $EvolutionChainStateCopyWith<$Res> {
  factory _$EvolutionChainLoadedCopyWith(_EvolutionChainLoaded value, $Res Function(_EvolutionChainLoaded) _then) = __$EvolutionChainLoadedCopyWithImpl;
@useResult
$Res call({
 EvolutionChainEntity evolution
});


$EvolutionChainEntityCopyWith<$Res> get evolution;

}
/// @nodoc
class __$EvolutionChainLoadedCopyWithImpl<$Res>
    implements _$EvolutionChainLoadedCopyWith<$Res> {
  __$EvolutionChainLoadedCopyWithImpl(this._self, this._then);

  final _EvolutionChainLoaded _self;
  final $Res Function(_EvolutionChainLoaded) _then;

/// Create a copy of EvolutionChainState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? evolution = null,}) {
  return _then(_EvolutionChainLoaded(
evolution: null == evolution ? _self.evolution : evolution // ignore: cast_nullable_to_non_nullable
as EvolutionChainEntity,
  ));
}

/// Create a copy of EvolutionChainState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EvolutionChainEntityCopyWith<$Res> get evolution {
  
  return $EvolutionChainEntityCopyWith<$Res>(_self.evolution, (value) {
    return _then(_self.copyWith(evolution: value));
  });
}
}

/// @nodoc


class _EvolutionChainError implements EvolutionChainState {
  const _EvolutionChainError(this.message);
  

 final  String message;

/// Create a copy of EvolutionChainState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EvolutionChainErrorCopyWith<_EvolutionChainError> get copyWith => __$EvolutionChainErrorCopyWithImpl<_EvolutionChainError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EvolutionChainError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'EvolutionChainState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$EvolutionChainErrorCopyWith<$Res> implements $EvolutionChainStateCopyWith<$Res> {
  factory _$EvolutionChainErrorCopyWith(_EvolutionChainError value, $Res Function(_EvolutionChainError) _then) = __$EvolutionChainErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$EvolutionChainErrorCopyWithImpl<$Res>
    implements _$EvolutionChainErrorCopyWith<$Res> {
  __$EvolutionChainErrorCopyWithImpl(this._self, this._then);

  final _EvolutionChainError _self;
  final $Res Function(_EvolutionChainError) _then;

/// Create a copy of EvolutionChainState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_EvolutionChainError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
