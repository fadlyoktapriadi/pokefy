// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_move_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetMoveEvent {

 List<MoveEntity> get moves;
/// Create a copy of GetMoveEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMoveEventCopyWith<GetMoveEvent> get copyWith => _$GetMoveEventCopyWithImpl<GetMoveEvent>(this as GetMoveEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMoveEvent&&const DeepCollectionEquality().equals(other.moves, moves));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(moves));

@override
String toString() {
  return 'GetMoveEvent(moves: $moves)';
}


}

/// @nodoc
abstract mixin class $GetMoveEventCopyWith<$Res>  {
  factory $GetMoveEventCopyWith(GetMoveEvent value, $Res Function(GetMoveEvent) _then) = _$GetMoveEventCopyWithImpl;
@useResult
$Res call({
 List<MoveEntity> moves
});




}
/// @nodoc
class _$GetMoveEventCopyWithImpl<$Res>
    implements $GetMoveEventCopyWith<$Res> {
  _$GetMoveEventCopyWithImpl(this._self, this._then);

  final GetMoveEvent _self;
  final $Res Function(GetMoveEvent) _then;

/// Create a copy of GetMoveEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? moves = null,}) {
  return _then(_self.copyWith(
moves: null == moves ? _self.moves : moves // ignore: cast_nullable_to_non_nullable
as List<MoveEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [GetMoveEvent].
extension GetMoveEventPatterns on GetMoveEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetMoves value)?  getMoves,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetMoves() when getMoves != null:
return getMoves(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetMoves value)  getMoves,}){
final _that = this;
switch (_that) {
case _GetMoves():
return getMoves(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetMoves value)?  getMoves,}){
final _that = this;
switch (_that) {
case _GetMoves() when getMoves != null:
return getMoves(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<MoveEntity> moves)?  getMoves,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetMoves() when getMoves != null:
return getMoves(_that.moves);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<MoveEntity> moves)  getMoves,}) {final _that = this;
switch (_that) {
case _GetMoves():
return getMoves(_that.moves);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<MoveEntity> moves)?  getMoves,}) {final _that = this;
switch (_that) {
case _GetMoves() when getMoves != null:
return getMoves(_that.moves);case _:
  return null;

}
}

}

/// @nodoc


class _GetMoves implements GetMoveEvent {
  const _GetMoves(final  List<MoveEntity> moves): _moves = moves;
  

 final  List<MoveEntity> _moves;
@override List<MoveEntity> get moves {
  if (_moves is EqualUnmodifiableListView) return _moves;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_moves);
}


/// Create a copy of GetMoveEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetMovesCopyWith<_GetMoves> get copyWith => __$GetMovesCopyWithImpl<_GetMoves>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetMoves&&const DeepCollectionEquality().equals(other._moves, _moves));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_moves));

@override
String toString() {
  return 'GetMoveEvent.getMoves(moves: $moves)';
}


}

/// @nodoc
abstract mixin class _$GetMovesCopyWith<$Res> implements $GetMoveEventCopyWith<$Res> {
  factory _$GetMovesCopyWith(_GetMoves value, $Res Function(_GetMoves) _then) = __$GetMovesCopyWithImpl;
@override @useResult
$Res call({
 List<MoveEntity> moves
});




}
/// @nodoc
class __$GetMovesCopyWithImpl<$Res>
    implements _$GetMovesCopyWith<$Res> {
  __$GetMovesCopyWithImpl(this._self, this._then);

  final _GetMoves _self;
  final $Res Function(_GetMoves) _then;

/// Create a copy of GetMoveEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? moves = null,}) {
  return _then(_GetMoves(
null == moves ? _self._moves : moves // ignore: cast_nullable_to_non_nullable
as List<MoveEntity>,
  ));
}


}

/// @nodoc
mixin _$GetMoveState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMoveState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetMoveState()';
}


}

/// @nodoc
class $GetMoveStateCopyWith<$Res>  {
$GetMoveStateCopyWith(GetMoveState _, $Res Function(GetMoveState) __);
}


/// Adds pattern-matching-related methods to [GetMoveState].
extension GetMoveStatePatterns on GetMoveState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Map<String, List<MoveData>> groupedMoves)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.groupedMoves);case _Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Map<String, List<MoveData>> groupedMoves)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.groupedMoves);case _Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Map<String, List<MoveData>> groupedMoves)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.groupedMoves);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements GetMoveState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetMoveState.initial()';
}


}




/// @nodoc


class _Loading implements GetMoveState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetMoveState.loading()';
}


}




/// @nodoc


class _Loaded implements GetMoveState {
  const _Loaded(final  Map<String, List<MoveData>> groupedMoves): _groupedMoves = groupedMoves;
  

 final  Map<String, List<MoveData>> _groupedMoves;
 Map<String, List<MoveData>> get groupedMoves {
  if (_groupedMoves is EqualUnmodifiableMapView) return _groupedMoves;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_groupedMoves);
}


/// Create a copy of GetMoveState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._groupedMoves, _groupedMoves));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_groupedMoves));

@override
String toString() {
  return 'GetMoveState.loaded(groupedMoves: $groupedMoves)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $GetMoveStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 Map<String, List<MoveData>> groupedMoves
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of GetMoveState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? groupedMoves = null,}) {
  return _then(_Loaded(
null == groupedMoves ? _self._groupedMoves : groupedMoves // ignore: cast_nullable_to_non_nullable
as Map<String, List<MoveData>>,
  ));
}


}

/// @nodoc


class _Error implements GetMoveState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of GetMoveState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GetMoveState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $GetMoveStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of GetMoveState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
