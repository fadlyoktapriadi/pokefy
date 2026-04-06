// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonEntity {

@JsonKey(name: "base_experience") int? get baseExperience;@JsonKey(name: "height") int? get height;@JsonKey(name: "id") int? get id;@JsonKey(name: "name") String? get name;@JsonKey(name: "order") int? get order;@JsonKey(name: "weight") int? get weight;
/// Create a copy of PokemonEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonEntityCopyWith<PokemonEntity> get copyWith => _$PokemonEntityCopyWithImpl<PokemonEntity>(this as PokemonEntity, _$identity);

  /// Serializes this PokemonEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonEntity&&(identical(other.baseExperience, baseExperience) || other.baseExperience == baseExperience)&&(identical(other.height, height) || other.height == height)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.order, order) || other.order == order)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseExperience,height,id,name,order,weight);

@override
String toString() {
  return 'PokemonEntity(baseExperience: $baseExperience, height: $height, id: $id, name: $name, order: $order, weight: $weight)';
}


}

/// @nodoc
abstract mixin class $PokemonEntityCopyWith<$Res>  {
  factory $PokemonEntityCopyWith(PokemonEntity value, $Res Function(PokemonEntity) _then) = _$PokemonEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "base_experience") int? baseExperience,@JsonKey(name: "height") int? height,@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name,@JsonKey(name: "order") int? order,@JsonKey(name: "weight") int? weight
});




}
/// @nodoc
class _$PokemonEntityCopyWithImpl<$Res>
    implements $PokemonEntityCopyWith<$Res> {
  _$PokemonEntityCopyWithImpl(this._self, this._then);

  final PokemonEntity _self;
  final $Res Function(PokemonEntity) _then;

/// Create a copy of PokemonEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseExperience = freezed,Object? height = freezed,Object? id = freezed,Object? name = freezed,Object? order = freezed,Object? weight = freezed,}) {
  return _then(_self.copyWith(
baseExperience: freezed == baseExperience ? _self.baseExperience : baseExperience // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonEntity].
extension PokemonEntityPatterns on PokemonEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonEntity value)  $default,){
final _that = this;
switch (_that) {
case _PokemonEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "base_experience")  int? baseExperience, @JsonKey(name: "height")  int? height, @JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "order")  int? order, @JsonKey(name: "weight")  int? weight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonEntity() when $default != null:
return $default(_that.baseExperience,_that.height,_that.id,_that.name,_that.order,_that.weight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "base_experience")  int? baseExperience, @JsonKey(name: "height")  int? height, @JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "order")  int? order, @JsonKey(name: "weight")  int? weight)  $default,) {final _that = this;
switch (_that) {
case _PokemonEntity():
return $default(_that.baseExperience,_that.height,_that.id,_that.name,_that.order,_that.weight);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "base_experience")  int? baseExperience, @JsonKey(name: "height")  int? height, @JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "order")  int? order, @JsonKey(name: "weight")  int? weight)?  $default,) {final _that = this;
switch (_that) {
case _PokemonEntity() when $default != null:
return $default(_that.baseExperience,_that.height,_that.id,_that.name,_that.order,_that.weight);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonEntity implements PokemonEntity {
  const _PokemonEntity({@JsonKey(name: "base_experience") this.baseExperience, @JsonKey(name: "height") this.height, @JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name, @JsonKey(name: "order") this.order, @JsonKey(name: "weight") this.weight});
  factory _PokemonEntity.fromJson(Map<String, dynamic> json) => _$PokemonEntityFromJson(json);

@override@JsonKey(name: "base_experience") final  int? baseExperience;
@override@JsonKey(name: "height") final  int? height;
@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "order") final  int? order;
@override@JsonKey(name: "weight") final  int? weight;

/// Create a copy of PokemonEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonEntityCopyWith<_PokemonEntity> get copyWith => __$PokemonEntityCopyWithImpl<_PokemonEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonEntity&&(identical(other.baseExperience, baseExperience) || other.baseExperience == baseExperience)&&(identical(other.height, height) || other.height == height)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.order, order) || other.order == order)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseExperience,height,id,name,order,weight);

@override
String toString() {
  return 'PokemonEntity(baseExperience: $baseExperience, height: $height, id: $id, name: $name, order: $order, weight: $weight)';
}


}

/// @nodoc
abstract mixin class _$PokemonEntityCopyWith<$Res> implements $PokemonEntityCopyWith<$Res> {
  factory _$PokemonEntityCopyWith(_PokemonEntity value, $Res Function(_PokemonEntity) _then) = __$PokemonEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "base_experience") int? baseExperience,@JsonKey(name: "height") int? height,@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name,@JsonKey(name: "order") int? order,@JsonKey(name: "weight") int? weight
});




}
/// @nodoc
class __$PokemonEntityCopyWithImpl<$Res>
    implements _$PokemonEntityCopyWith<$Res> {
  __$PokemonEntityCopyWithImpl(this._self, this._then);

  final _PokemonEntity _self;
  final $Res Function(_PokemonEntity) _then;

/// Create a copy of PokemonEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseExperience = freezed,Object? height = freezed,Object? id = freezed,Object? name = freezed,Object? order = freezed,Object? weight = freezed,}) {
  return _then(_PokemonEntity(
baseExperience: freezed == baseExperience ? _self.baseExperience : baseExperience // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
