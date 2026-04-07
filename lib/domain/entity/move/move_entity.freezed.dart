// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'move_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MoveEntity {

@JsonKey(name: "move") SpeciesEntity? get move;@JsonKey(name: "version_group_details") List<VersionGroupDetailEntity>? get versionGroupDetails;
/// Create a copy of MoveEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoveEntityCopyWith<MoveEntity> get copyWith => _$MoveEntityCopyWithImpl<MoveEntity>(this as MoveEntity, _$identity);

  /// Serializes this MoveEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoveEntity&&(identical(other.move, move) || other.move == move)&&const DeepCollectionEquality().equals(other.versionGroupDetails, versionGroupDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,move,const DeepCollectionEquality().hash(versionGroupDetails));

@override
String toString() {
  return 'MoveEntity(move: $move, versionGroupDetails: $versionGroupDetails)';
}


}

/// @nodoc
abstract mixin class $MoveEntityCopyWith<$Res>  {
  factory $MoveEntityCopyWith(MoveEntity value, $Res Function(MoveEntity) _then) = _$MoveEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "move") SpeciesEntity? move,@JsonKey(name: "version_group_details") List<VersionGroupDetailEntity>? versionGroupDetails
});


$SpeciesEntityCopyWith<$Res>? get move;

}
/// @nodoc
class _$MoveEntityCopyWithImpl<$Res>
    implements $MoveEntityCopyWith<$Res> {
  _$MoveEntityCopyWithImpl(this._self, this._then);

  final MoveEntity _self;
  final $Res Function(MoveEntity) _then;

/// Create a copy of MoveEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? move = freezed,Object? versionGroupDetails = freezed,}) {
  return _then(_self.copyWith(
move: freezed == move ? _self.move : move // ignore: cast_nullable_to_non_nullable
as SpeciesEntity?,versionGroupDetails: freezed == versionGroupDetails ? _self.versionGroupDetails : versionGroupDetails // ignore: cast_nullable_to_non_nullable
as List<VersionGroupDetailEntity>?,
  ));
}
/// Create a copy of MoveEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesEntityCopyWith<$Res>? get move {
    if (_self.move == null) {
    return null;
  }

  return $SpeciesEntityCopyWith<$Res>(_self.move!, (value) {
    return _then(_self.copyWith(move: value));
  });
}
}


/// Adds pattern-matching-related methods to [MoveEntity].
extension MoveEntityPatterns on MoveEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MoveEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoveEntity() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MoveEntity value)  $default,){
final _that = this;
switch (_that) {
case _MoveEntity():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MoveEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MoveEntity() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "move")  SpeciesEntity? move, @JsonKey(name: "version_group_details")  List<VersionGroupDetailEntity>? versionGroupDetails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MoveEntity() when $default != null:
return $default(_that.move,_that.versionGroupDetails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "move")  SpeciesEntity? move, @JsonKey(name: "version_group_details")  List<VersionGroupDetailEntity>? versionGroupDetails)  $default,) {final _that = this;
switch (_that) {
case _MoveEntity():
return $default(_that.move,_that.versionGroupDetails);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "move")  SpeciesEntity? move, @JsonKey(name: "version_group_details")  List<VersionGroupDetailEntity>? versionGroupDetails)?  $default,) {final _that = this;
switch (_that) {
case _MoveEntity() when $default != null:
return $default(_that.move,_that.versionGroupDetails);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MoveEntity implements MoveEntity {
  const _MoveEntity({@JsonKey(name: "move") this.move, @JsonKey(name: "version_group_details") final  List<VersionGroupDetailEntity>? versionGroupDetails}): _versionGroupDetails = versionGroupDetails;
  factory _MoveEntity.fromJson(Map<String, dynamic> json) => _$MoveEntityFromJson(json);

@override@JsonKey(name: "move") final  SpeciesEntity? move;
 final  List<VersionGroupDetailEntity>? _versionGroupDetails;
@override@JsonKey(name: "version_group_details") List<VersionGroupDetailEntity>? get versionGroupDetails {
  final value = _versionGroupDetails;
  if (value == null) return null;
  if (_versionGroupDetails is EqualUnmodifiableListView) return _versionGroupDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of MoveEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoveEntityCopyWith<_MoveEntity> get copyWith => __$MoveEntityCopyWithImpl<_MoveEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MoveEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoveEntity&&(identical(other.move, move) || other.move == move)&&const DeepCollectionEquality().equals(other._versionGroupDetails, _versionGroupDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,move,const DeepCollectionEquality().hash(_versionGroupDetails));

@override
String toString() {
  return 'MoveEntity(move: $move, versionGroupDetails: $versionGroupDetails)';
}


}

/// @nodoc
abstract mixin class _$MoveEntityCopyWith<$Res> implements $MoveEntityCopyWith<$Res> {
  factory _$MoveEntityCopyWith(_MoveEntity value, $Res Function(_MoveEntity) _then) = __$MoveEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "move") SpeciesEntity? move,@JsonKey(name: "version_group_details") List<VersionGroupDetailEntity>? versionGroupDetails
});


@override $SpeciesEntityCopyWith<$Res>? get move;

}
/// @nodoc
class __$MoveEntityCopyWithImpl<$Res>
    implements _$MoveEntityCopyWith<$Res> {
  __$MoveEntityCopyWithImpl(this._self, this._then);

  final _MoveEntity _self;
  final $Res Function(_MoveEntity) _then;

/// Create a copy of MoveEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? move = freezed,Object? versionGroupDetails = freezed,}) {
  return _then(_MoveEntity(
move: freezed == move ? _self.move : move // ignore: cast_nullable_to_non_nullable
as SpeciesEntity?,versionGroupDetails: freezed == versionGroupDetails ? _self._versionGroupDetails : versionGroupDetails // ignore: cast_nullable_to_non_nullable
as List<VersionGroupDetailEntity>?,
  ));
}

/// Create a copy of MoveEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesEntityCopyWith<$Res>? get move {
    if (_self.move == null) {
    return null;
  }

  return $SpeciesEntityCopyWith<$Res>(_self.move!, (value) {
    return _then(_self.copyWith(move: value));
  });
}
}

// dart format on
