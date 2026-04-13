// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connectivity_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConnectivityState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectivityState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectivityState()';
}


}

/// @nodoc
class $ConnectivityStateCopyWith<$Res>  {
$ConnectivityStateCopyWith(ConnectivityState _, $Res Function(ConnectivityState) __);
}


/// Adds pattern-matching-related methods to [ConnectivityState].
extension ConnectivityStatePatterns on ConnectivityState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ConnectivityInitial value)?  initial,TResult Function( _ConnectivityLoading value)?  loading,TResult Function( _ConnectivityConnected value)?  connected,TResult Function( _ConnectivityDisconnected value)?  disconnected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConnectivityInitial() when initial != null:
return initial(_that);case _ConnectivityLoading() when loading != null:
return loading(_that);case _ConnectivityConnected() when connected != null:
return connected(_that);case _ConnectivityDisconnected() when disconnected != null:
return disconnected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ConnectivityInitial value)  initial,required TResult Function( _ConnectivityLoading value)  loading,required TResult Function( _ConnectivityConnected value)  connected,required TResult Function( _ConnectivityDisconnected value)  disconnected,}){
final _that = this;
switch (_that) {
case _ConnectivityInitial():
return initial(_that);case _ConnectivityLoading():
return loading(_that);case _ConnectivityConnected():
return connected(_that);case _ConnectivityDisconnected():
return disconnected(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ConnectivityInitial value)?  initial,TResult? Function( _ConnectivityLoading value)?  loading,TResult? Function( _ConnectivityConnected value)?  connected,TResult? Function( _ConnectivityDisconnected value)?  disconnected,}){
final _that = this;
switch (_that) {
case _ConnectivityInitial() when initial != null:
return initial(_that);case _ConnectivityLoading() when loading != null:
return loading(_that);case _ConnectivityConnected() when connected != null:
return connected(_that);case _ConnectivityDisconnected() when disconnected != null:
return disconnected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  connected,TResult Function()?  disconnected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConnectivityInitial() when initial != null:
return initial();case _ConnectivityLoading() when loading != null:
return loading();case _ConnectivityConnected() when connected != null:
return connected();case _ConnectivityDisconnected() when disconnected != null:
return disconnected();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  connected,required TResult Function()  disconnected,}) {final _that = this;
switch (_that) {
case _ConnectivityInitial():
return initial();case _ConnectivityLoading():
return loading();case _ConnectivityConnected():
return connected();case _ConnectivityDisconnected():
return disconnected();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  connected,TResult? Function()?  disconnected,}) {final _that = this;
switch (_that) {
case _ConnectivityInitial() when initial != null:
return initial();case _ConnectivityLoading() when loading != null:
return loading();case _ConnectivityConnected() when connected != null:
return connected();case _ConnectivityDisconnected() when disconnected != null:
return disconnected();case _:
  return null;

}
}

}

/// @nodoc


class _ConnectivityInitial implements ConnectivityState {
  const _ConnectivityInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectivityInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectivityState.initial()';
}


}




/// @nodoc


class _ConnectivityLoading implements ConnectivityState {
  const _ConnectivityLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectivityLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectivityState.loading()';
}


}




/// @nodoc


class _ConnectivityConnected implements ConnectivityState {
  const _ConnectivityConnected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectivityConnected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectivityState.connected()';
}


}




/// @nodoc


class _ConnectivityDisconnected implements ConnectivityState {
  const _ConnectivityDisconnected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectivityDisconnected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectivityState.disconnected()';
}


}




// dart format on
