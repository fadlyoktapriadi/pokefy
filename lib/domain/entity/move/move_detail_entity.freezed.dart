// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'move_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MoveDetailEntity {

@JsonKey(name: "accuracy") int? get accuracy;@JsonKey(name: "id") int? get id;@JsonKey(name: "name") String? get name;@JsonKey(name: "damage_class") MoveDamageClassEntity? get damageClass;@JsonKey(name: "power") int? get power;@JsonKey(name: "pp") int? get pp;@JsonKey(name: "priority") int? get priority;
/// Create a copy of MoveDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoveDetailEntityCopyWith<MoveDetailEntity> get copyWith => _$MoveDetailEntityCopyWithImpl<MoveDetailEntity>(this as MoveDetailEntity, _$identity);

  /// Serializes this MoveDetailEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoveDetailEntity&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.damageClass, damageClass) || other.damageClass == damageClass)&&(identical(other.power, power) || other.power == power)&&(identical(other.pp, pp) || other.pp == pp)&&(identical(other.priority, priority) || other.priority == priority));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accuracy,id,name,damageClass,power,pp,priority);

@override
String toString() {
  return 'MoveDetailEntity(accuracy: $accuracy, id: $id, name: $name, damageClass: $damageClass, power: $power, pp: $pp, priority: $priority)';
}


}

/// @nodoc
abstract mixin class $MoveDetailEntityCopyWith<$Res>  {
  factory $MoveDetailEntityCopyWith(MoveDetailEntity value, $Res Function(MoveDetailEntity) _then) = _$MoveDetailEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "accuracy") int? accuracy,@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name,@JsonKey(name: "damage_class") MoveDamageClassEntity? damageClass,@JsonKey(name: "power") int? power,@JsonKey(name: "pp") int? pp,@JsonKey(name: "priority") int? priority
});


$MoveDamageClassEntityCopyWith<$Res>? get damageClass;

}
/// @nodoc
class _$MoveDetailEntityCopyWithImpl<$Res>
    implements $MoveDetailEntityCopyWith<$Res> {
  _$MoveDetailEntityCopyWithImpl(this._self, this._then);

  final MoveDetailEntity _self;
  final $Res Function(MoveDetailEntity) _then;

/// Create a copy of MoveDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accuracy = freezed,Object? id = freezed,Object? name = freezed,Object? damageClass = freezed,Object? power = freezed,Object? pp = freezed,Object? priority = freezed,}) {
  return _then(_self.copyWith(
accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,damageClass: freezed == damageClass ? _self.damageClass : damageClass // ignore: cast_nullable_to_non_nullable
as MoveDamageClassEntity?,power: freezed == power ? _self.power : power // ignore: cast_nullable_to_non_nullable
as int?,pp: freezed == pp ? _self.pp : pp // ignore: cast_nullable_to_non_nullable
as int?,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of MoveDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoveDamageClassEntityCopyWith<$Res>? get damageClass {
    if (_self.damageClass == null) {
    return null;
  }

  return $MoveDamageClassEntityCopyWith<$Res>(_self.damageClass!, (value) {
    return _then(_self.copyWith(damageClass: value));
  });
}
}


/// Adds pattern-matching-related methods to [MoveDetailEntity].
extension MoveDetailEntityPatterns on MoveDetailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MoveDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoveDetailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MoveDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _MoveDetailEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MoveDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MoveDetailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "accuracy")  int? accuracy, @JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "damage_class")  MoveDamageClassEntity? damageClass, @JsonKey(name: "power")  int? power, @JsonKey(name: "pp")  int? pp, @JsonKey(name: "priority")  int? priority)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MoveDetailEntity() when $default != null:
return $default(_that.accuracy,_that.id,_that.name,_that.damageClass,_that.power,_that.pp,_that.priority);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "accuracy")  int? accuracy, @JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "damage_class")  MoveDamageClassEntity? damageClass, @JsonKey(name: "power")  int? power, @JsonKey(name: "pp")  int? pp, @JsonKey(name: "priority")  int? priority)  $default,) {final _that = this;
switch (_that) {
case _MoveDetailEntity():
return $default(_that.accuracy,_that.id,_that.name,_that.damageClass,_that.power,_that.pp,_that.priority);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "accuracy")  int? accuracy, @JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "damage_class")  MoveDamageClassEntity? damageClass, @JsonKey(name: "power")  int? power, @JsonKey(name: "pp")  int? pp, @JsonKey(name: "priority")  int? priority)?  $default,) {final _that = this;
switch (_that) {
case _MoveDetailEntity() when $default != null:
return $default(_that.accuracy,_that.id,_that.name,_that.damageClass,_that.power,_that.pp,_that.priority);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MoveDetailEntity implements MoveDetailEntity {
  const _MoveDetailEntity({@JsonKey(name: "accuracy") this.accuracy, @JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name, @JsonKey(name: "damage_class") this.damageClass, @JsonKey(name: "power") this.power, @JsonKey(name: "pp") this.pp, @JsonKey(name: "priority") this.priority});
  factory _MoveDetailEntity.fromJson(Map<String, dynamic> json) => _$MoveDetailEntityFromJson(json);

@override@JsonKey(name: "accuracy") final  int? accuracy;
@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "damage_class") final  MoveDamageClassEntity? damageClass;
@override@JsonKey(name: "power") final  int? power;
@override@JsonKey(name: "pp") final  int? pp;
@override@JsonKey(name: "priority") final  int? priority;

/// Create a copy of MoveDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoveDetailEntityCopyWith<_MoveDetailEntity> get copyWith => __$MoveDetailEntityCopyWithImpl<_MoveDetailEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MoveDetailEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoveDetailEntity&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.damageClass, damageClass) || other.damageClass == damageClass)&&(identical(other.power, power) || other.power == power)&&(identical(other.pp, pp) || other.pp == pp)&&(identical(other.priority, priority) || other.priority == priority));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accuracy,id,name,damageClass,power,pp,priority);

@override
String toString() {
  return 'MoveDetailEntity(accuracy: $accuracy, id: $id, name: $name, damageClass: $damageClass, power: $power, pp: $pp, priority: $priority)';
}


}

/// @nodoc
abstract mixin class _$MoveDetailEntityCopyWith<$Res> implements $MoveDetailEntityCopyWith<$Res> {
  factory _$MoveDetailEntityCopyWith(_MoveDetailEntity value, $Res Function(_MoveDetailEntity) _then) = __$MoveDetailEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "accuracy") int? accuracy,@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name,@JsonKey(name: "damage_class") MoveDamageClassEntity? damageClass,@JsonKey(name: "power") int? power,@JsonKey(name: "pp") int? pp,@JsonKey(name: "priority") int? priority
});


@override $MoveDamageClassEntityCopyWith<$Res>? get damageClass;

}
/// @nodoc
class __$MoveDetailEntityCopyWithImpl<$Res>
    implements _$MoveDetailEntityCopyWith<$Res> {
  __$MoveDetailEntityCopyWithImpl(this._self, this._then);

  final _MoveDetailEntity _self;
  final $Res Function(_MoveDetailEntity) _then;

/// Create a copy of MoveDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accuracy = freezed,Object? id = freezed,Object? name = freezed,Object? damageClass = freezed,Object? power = freezed,Object? pp = freezed,Object? priority = freezed,}) {
  return _then(_MoveDetailEntity(
accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,damageClass: freezed == damageClass ? _self.damageClass : damageClass // ignore: cast_nullable_to_non_nullable
as MoveDamageClassEntity?,power: freezed == power ? _self.power : power // ignore: cast_nullable_to_non_nullable
as int?,pp: freezed == pp ? _self.pp : pp // ignore: cast_nullable_to_non_nullable
as int?,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of MoveDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoveDamageClassEntityCopyWith<$Res>? get damageClass {
    if (_self.damageClass == null) {
    return null;
  }

  return $MoveDamageClassEntityCopyWith<$Res>(_self.damageClass!, (value) {
    return _then(_self.copyWith(damageClass: value));
  });
}
}


/// @nodoc
mixin _$MoveDamageClassEntity {

@JsonKey(name: "name") String? get name;@JsonKey(name: "url") String? get url;
/// Create a copy of MoveDamageClassEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoveDamageClassEntityCopyWith<MoveDamageClassEntity> get copyWith => _$MoveDamageClassEntityCopyWithImpl<MoveDamageClassEntity>(this as MoveDamageClassEntity, _$identity);

  /// Serializes this MoveDamageClassEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoveDamageClassEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'MoveDamageClassEntity(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $MoveDamageClassEntityCopyWith<$Res>  {
  factory $MoveDamageClassEntityCopyWith(MoveDamageClassEntity value, $Res Function(MoveDamageClassEntity) _then) = _$MoveDamageClassEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "name") String? name,@JsonKey(name: "url") String? url
});




}
/// @nodoc
class _$MoveDamageClassEntityCopyWithImpl<$Res>
    implements $MoveDamageClassEntityCopyWith<$Res> {
  _$MoveDamageClassEntityCopyWithImpl(this._self, this._then);

  final MoveDamageClassEntity _self;
  final $Res Function(MoveDamageClassEntity) _then;

/// Create a copy of MoveDamageClassEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? url = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MoveDamageClassEntity].
extension MoveDamageClassEntityPatterns on MoveDamageClassEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MoveDamageClassEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoveDamageClassEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MoveDamageClassEntity value)  $default,){
final _that = this;
switch (_that) {
case _MoveDamageClassEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MoveDamageClassEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MoveDamageClassEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "name")  String? name, @JsonKey(name: "url")  String? url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MoveDamageClassEntity() when $default != null:
return $default(_that.name,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "name")  String? name, @JsonKey(name: "url")  String? url)  $default,) {final _that = this;
switch (_that) {
case _MoveDamageClassEntity():
return $default(_that.name,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "name")  String? name, @JsonKey(name: "url")  String? url)?  $default,) {final _that = this;
switch (_that) {
case _MoveDamageClassEntity() when $default != null:
return $default(_that.name,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MoveDamageClassEntity implements MoveDamageClassEntity {
  const _MoveDamageClassEntity({@JsonKey(name: "name") this.name, @JsonKey(name: "url") this.url});
  factory _MoveDamageClassEntity.fromJson(Map<String, dynamic> json) => _$MoveDamageClassEntityFromJson(json);

@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "url") final  String? url;

/// Create a copy of MoveDamageClassEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoveDamageClassEntityCopyWith<_MoveDamageClassEntity> get copyWith => __$MoveDamageClassEntityCopyWithImpl<_MoveDamageClassEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MoveDamageClassEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoveDamageClassEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'MoveDamageClassEntity(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$MoveDamageClassEntityCopyWith<$Res> implements $MoveDamageClassEntityCopyWith<$Res> {
  factory _$MoveDamageClassEntityCopyWith(_MoveDamageClassEntity value, $Res Function(_MoveDamageClassEntity) _then) = __$MoveDamageClassEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "name") String? name,@JsonKey(name: "url") String? url
});




}
/// @nodoc
class __$MoveDamageClassEntityCopyWithImpl<$Res>
    implements _$MoveDamageClassEntityCopyWith<$Res> {
  __$MoveDamageClassEntityCopyWithImpl(this._self, this._then);

  final _MoveDamageClassEntity _self;
  final $Res Function(_MoveDamageClassEntity) _then;

/// Create a copy of MoveDamageClassEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? url = freezed,}) {
  return _then(_MoveDamageClassEntity(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
