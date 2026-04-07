// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'version_group_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VersionGroupDetailEntity {

@JsonKey(name: "level_learned_at") int? get levelLearnedAt;@JsonKey(name: "move_learn_method") SpeciesEntity? get moveLearnMethod;@JsonKey(name: "order") int? get order;@JsonKey(name: "version_group") SpeciesEntity? get versionGroup;
/// Create a copy of VersionGroupDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VersionGroupDetailEntityCopyWith<VersionGroupDetailEntity> get copyWith => _$VersionGroupDetailEntityCopyWithImpl<VersionGroupDetailEntity>(this as VersionGroupDetailEntity, _$identity);

  /// Serializes this VersionGroupDetailEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VersionGroupDetailEntity&&(identical(other.levelLearnedAt, levelLearnedAt) || other.levelLearnedAt == levelLearnedAt)&&(identical(other.moveLearnMethod, moveLearnMethod) || other.moveLearnMethod == moveLearnMethod)&&(identical(other.order, order) || other.order == order)&&(identical(other.versionGroup, versionGroup) || other.versionGroup == versionGroup));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,levelLearnedAt,moveLearnMethod,order,versionGroup);

@override
String toString() {
  return 'VersionGroupDetailEntity(levelLearnedAt: $levelLearnedAt, moveLearnMethod: $moveLearnMethod, order: $order, versionGroup: $versionGroup)';
}


}

/// @nodoc
abstract mixin class $VersionGroupDetailEntityCopyWith<$Res>  {
  factory $VersionGroupDetailEntityCopyWith(VersionGroupDetailEntity value, $Res Function(VersionGroupDetailEntity) _then) = _$VersionGroupDetailEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "level_learned_at") int? levelLearnedAt,@JsonKey(name: "move_learn_method") SpeciesEntity? moveLearnMethod,@JsonKey(name: "order") int? order,@JsonKey(name: "version_group") SpeciesEntity? versionGroup
});


$SpeciesEntityCopyWith<$Res>? get moveLearnMethod;$SpeciesEntityCopyWith<$Res>? get versionGroup;

}
/// @nodoc
class _$VersionGroupDetailEntityCopyWithImpl<$Res>
    implements $VersionGroupDetailEntityCopyWith<$Res> {
  _$VersionGroupDetailEntityCopyWithImpl(this._self, this._then);

  final VersionGroupDetailEntity _self;
  final $Res Function(VersionGroupDetailEntity) _then;

/// Create a copy of VersionGroupDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? levelLearnedAt = freezed,Object? moveLearnMethod = freezed,Object? order = freezed,Object? versionGroup = freezed,}) {
  return _then(_self.copyWith(
levelLearnedAt: freezed == levelLearnedAt ? _self.levelLearnedAt : levelLearnedAt // ignore: cast_nullable_to_non_nullable
as int?,moveLearnMethod: freezed == moveLearnMethod ? _self.moveLearnMethod : moveLearnMethod // ignore: cast_nullable_to_non_nullable
as SpeciesEntity?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,versionGroup: freezed == versionGroup ? _self.versionGroup : versionGroup // ignore: cast_nullable_to_non_nullable
as SpeciesEntity?,
  ));
}
/// Create a copy of VersionGroupDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesEntityCopyWith<$Res>? get moveLearnMethod {
    if (_self.moveLearnMethod == null) {
    return null;
  }

  return $SpeciesEntityCopyWith<$Res>(_self.moveLearnMethod!, (value) {
    return _then(_self.copyWith(moveLearnMethod: value));
  });
}/// Create a copy of VersionGroupDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesEntityCopyWith<$Res>? get versionGroup {
    if (_self.versionGroup == null) {
    return null;
  }

  return $SpeciesEntityCopyWith<$Res>(_self.versionGroup!, (value) {
    return _then(_self.copyWith(versionGroup: value));
  });
}
}


/// Adds pattern-matching-related methods to [VersionGroupDetailEntity].
extension VersionGroupDetailEntityPatterns on VersionGroupDetailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VersionGroupDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VersionGroupDetailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VersionGroupDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _VersionGroupDetailEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VersionGroupDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _VersionGroupDetailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "level_learned_at")  int? levelLearnedAt, @JsonKey(name: "move_learn_method")  SpeciesEntity? moveLearnMethod, @JsonKey(name: "order")  int? order, @JsonKey(name: "version_group")  SpeciesEntity? versionGroup)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VersionGroupDetailEntity() when $default != null:
return $default(_that.levelLearnedAt,_that.moveLearnMethod,_that.order,_that.versionGroup);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "level_learned_at")  int? levelLearnedAt, @JsonKey(name: "move_learn_method")  SpeciesEntity? moveLearnMethod, @JsonKey(name: "order")  int? order, @JsonKey(name: "version_group")  SpeciesEntity? versionGroup)  $default,) {final _that = this;
switch (_that) {
case _VersionGroupDetailEntity():
return $default(_that.levelLearnedAt,_that.moveLearnMethod,_that.order,_that.versionGroup);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "level_learned_at")  int? levelLearnedAt, @JsonKey(name: "move_learn_method")  SpeciesEntity? moveLearnMethod, @JsonKey(name: "order")  int? order, @JsonKey(name: "version_group")  SpeciesEntity? versionGroup)?  $default,) {final _that = this;
switch (_that) {
case _VersionGroupDetailEntity() when $default != null:
return $default(_that.levelLearnedAt,_that.moveLearnMethod,_that.order,_that.versionGroup);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VersionGroupDetailEntity implements VersionGroupDetailEntity {
  const _VersionGroupDetailEntity({@JsonKey(name: "level_learned_at") this.levelLearnedAt, @JsonKey(name: "move_learn_method") this.moveLearnMethod, @JsonKey(name: "order") this.order, @JsonKey(name: "version_group") this.versionGroup});
  factory _VersionGroupDetailEntity.fromJson(Map<String, dynamic> json) => _$VersionGroupDetailEntityFromJson(json);

@override@JsonKey(name: "level_learned_at") final  int? levelLearnedAt;
@override@JsonKey(name: "move_learn_method") final  SpeciesEntity? moveLearnMethod;
@override@JsonKey(name: "order") final  int? order;
@override@JsonKey(name: "version_group") final  SpeciesEntity? versionGroup;

/// Create a copy of VersionGroupDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VersionGroupDetailEntityCopyWith<_VersionGroupDetailEntity> get copyWith => __$VersionGroupDetailEntityCopyWithImpl<_VersionGroupDetailEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VersionGroupDetailEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VersionGroupDetailEntity&&(identical(other.levelLearnedAt, levelLearnedAt) || other.levelLearnedAt == levelLearnedAt)&&(identical(other.moveLearnMethod, moveLearnMethod) || other.moveLearnMethod == moveLearnMethod)&&(identical(other.order, order) || other.order == order)&&(identical(other.versionGroup, versionGroup) || other.versionGroup == versionGroup));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,levelLearnedAt,moveLearnMethod,order,versionGroup);

@override
String toString() {
  return 'VersionGroupDetailEntity(levelLearnedAt: $levelLearnedAt, moveLearnMethod: $moveLearnMethod, order: $order, versionGroup: $versionGroup)';
}


}

/// @nodoc
abstract mixin class _$VersionGroupDetailEntityCopyWith<$Res> implements $VersionGroupDetailEntityCopyWith<$Res> {
  factory _$VersionGroupDetailEntityCopyWith(_VersionGroupDetailEntity value, $Res Function(_VersionGroupDetailEntity) _then) = __$VersionGroupDetailEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "level_learned_at") int? levelLearnedAt,@JsonKey(name: "move_learn_method") SpeciesEntity? moveLearnMethod,@JsonKey(name: "order") int? order,@JsonKey(name: "version_group") SpeciesEntity? versionGroup
});


@override $SpeciesEntityCopyWith<$Res>? get moveLearnMethod;@override $SpeciesEntityCopyWith<$Res>? get versionGroup;

}
/// @nodoc
class __$VersionGroupDetailEntityCopyWithImpl<$Res>
    implements _$VersionGroupDetailEntityCopyWith<$Res> {
  __$VersionGroupDetailEntityCopyWithImpl(this._self, this._then);

  final _VersionGroupDetailEntity _self;
  final $Res Function(_VersionGroupDetailEntity) _then;

/// Create a copy of VersionGroupDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? levelLearnedAt = freezed,Object? moveLearnMethod = freezed,Object? order = freezed,Object? versionGroup = freezed,}) {
  return _then(_VersionGroupDetailEntity(
levelLearnedAt: freezed == levelLearnedAt ? _self.levelLearnedAt : levelLearnedAt // ignore: cast_nullable_to_non_nullable
as int?,moveLearnMethod: freezed == moveLearnMethod ? _self.moveLearnMethod : moveLearnMethod // ignore: cast_nullable_to_non_nullable
as SpeciesEntity?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,versionGroup: freezed == versionGroup ? _self.versionGroup : versionGroup // ignore: cast_nullable_to_non_nullable
as SpeciesEntity?,
  ));
}

/// Create a copy of VersionGroupDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesEntityCopyWith<$Res>? get moveLearnMethod {
    if (_self.moveLearnMethod == null) {
    return null;
  }

  return $SpeciesEntityCopyWith<$Res>(_self.moveLearnMethod!, (value) {
    return _then(_self.copyWith(moveLearnMethod: value));
  });
}/// Create a copy of VersionGroupDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesEntityCopyWith<$Res>? get versionGroup {
    if (_self.versionGroup == null) {
    return null;
  }

  return $SpeciesEntityCopyWith<$Res>(_self.versionGroup!, (value) {
    return _then(_self.copyWith(versionGroup: value));
  });
}
}

// dart format on
