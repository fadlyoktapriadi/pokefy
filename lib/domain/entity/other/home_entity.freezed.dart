// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeEntity {

@JsonKey(name: "front_default") String? get frontDefault;@JsonKey(name: "front_female") String? get frontFemale;@JsonKey(name: "front_shiny") String? get frontShiny;@JsonKey(name: "front_shiny_female") String? get frontShinyFemale;
/// Create a copy of HomeEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeEntityCopyWith<HomeEntity> get copyWith => _$HomeEntityCopyWithImpl<HomeEntity>(this as HomeEntity, _$identity);

  /// Serializes this HomeEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEntity&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault)&&(identical(other.frontFemale, frontFemale) || other.frontFemale == frontFemale)&&(identical(other.frontShiny, frontShiny) || other.frontShiny == frontShiny)&&(identical(other.frontShinyFemale, frontShinyFemale) || other.frontShinyFemale == frontShinyFemale));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontDefault,frontFemale,frontShiny,frontShinyFemale);

@override
String toString() {
  return 'HomeEntity(frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny, frontShinyFemale: $frontShinyFemale)';
}


}

/// @nodoc
abstract mixin class $HomeEntityCopyWith<$Res>  {
  factory $HomeEntityCopyWith(HomeEntity value, $Res Function(HomeEntity) _then) = _$HomeEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "front_default") String? frontDefault,@JsonKey(name: "front_female") String? frontFemale,@JsonKey(name: "front_shiny") String? frontShiny,@JsonKey(name: "front_shiny_female") String? frontShinyFemale
});




}
/// @nodoc
class _$HomeEntityCopyWithImpl<$Res>
    implements $HomeEntityCopyWith<$Res> {
  _$HomeEntityCopyWithImpl(this._self, this._then);

  final HomeEntity _self;
  final $Res Function(HomeEntity) _then;

/// Create a copy of HomeEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? frontDefault = freezed,Object? frontFemale = freezed,Object? frontShiny = freezed,Object? frontShinyFemale = freezed,}) {
  return _then(_self.copyWith(
frontDefault: freezed == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String?,frontFemale: freezed == frontFemale ? _self.frontFemale : frontFemale // ignore: cast_nullable_to_non_nullable
as String?,frontShiny: freezed == frontShiny ? _self.frontShiny : frontShiny // ignore: cast_nullable_to_non_nullable
as String?,frontShinyFemale: freezed == frontShinyFemale ? _self.frontShinyFemale : frontShinyFemale // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeEntity].
extension HomeEntityPatterns on HomeEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeEntity value)  $default,){
final _that = this;
switch (_that) {
case _HomeEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeEntity value)?  $default,){
final _that = this;
switch (_that) {
case _HomeEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "front_default")  String? frontDefault, @JsonKey(name: "front_female")  String? frontFemale, @JsonKey(name: "front_shiny")  String? frontShiny, @JsonKey(name: "front_shiny_female")  String? frontShinyFemale)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeEntity() when $default != null:
return $default(_that.frontDefault,_that.frontFemale,_that.frontShiny,_that.frontShinyFemale);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "front_default")  String? frontDefault, @JsonKey(name: "front_female")  String? frontFemale, @JsonKey(name: "front_shiny")  String? frontShiny, @JsonKey(name: "front_shiny_female")  String? frontShinyFemale)  $default,) {final _that = this;
switch (_that) {
case _HomeEntity():
return $default(_that.frontDefault,_that.frontFemale,_that.frontShiny,_that.frontShinyFemale);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "front_default")  String? frontDefault, @JsonKey(name: "front_female")  String? frontFemale, @JsonKey(name: "front_shiny")  String? frontShiny, @JsonKey(name: "front_shiny_female")  String? frontShinyFemale)?  $default,) {final _that = this;
switch (_that) {
case _HomeEntity() when $default != null:
return $default(_that.frontDefault,_that.frontFemale,_that.frontShiny,_that.frontShinyFemale);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeEntity implements HomeEntity {
  const _HomeEntity({@JsonKey(name: "front_default") this.frontDefault, @JsonKey(name: "front_female") this.frontFemale, @JsonKey(name: "front_shiny") this.frontShiny, @JsonKey(name: "front_shiny_female") this.frontShinyFemale});
  factory _HomeEntity.fromJson(Map<String, dynamic> json) => _$HomeEntityFromJson(json);

@override@JsonKey(name: "front_default") final  String? frontDefault;
@override@JsonKey(name: "front_female") final  String? frontFemale;
@override@JsonKey(name: "front_shiny") final  String? frontShiny;
@override@JsonKey(name: "front_shiny_female") final  String? frontShinyFemale;

/// Create a copy of HomeEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeEntityCopyWith<_HomeEntity> get copyWith => __$HomeEntityCopyWithImpl<_HomeEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeEntity&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault)&&(identical(other.frontFemale, frontFemale) || other.frontFemale == frontFemale)&&(identical(other.frontShiny, frontShiny) || other.frontShiny == frontShiny)&&(identical(other.frontShinyFemale, frontShinyFemale) || other.frontShinyFemale == frontShinyFemale));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontDefault,frontFemale,frontShiny,frontShinyFemale);

@override
String toString() {
  return 'HomeEntity(frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny, frontShinyFemale: $frontShinyFemale)';
}


}

/// @nodoc
abstract mixin class _$HomeEntityCopyWith<$Res> implements $HomeEntityCopyWith<$Res> {
  factory _$HomeEntityCopyWith(_HomeEntity value, $Res Function(_HomeEntity) _then) = __$HomeEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "front_default") String? frontDefault,@JsonKey(name: "front_female") String? frontFemale,@JsonKey(name: "front_shiny") String? frontShiny,@JsonKey(name: "front_shiny_female") String? frontShinyFemale
});




}
/// @nodoc
class __$HomeEntityCopyWithImpl<$Res>
    implements _$HomeEntityCopyWith<$Res> {
  __$HomeEntityCopyWithImpl(this._self, this._then);

  final _HomeEntity _self;
  final $Res Function(_HomeEntity) _then;

/// Create a copy of HomeEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? frontDefault = freezed,Object? frontFemale = freezed,Object? frontShiny = freezed,Object? frontShinyFemale = freezed,}) {
  return _then(_HomeEntity(
frontDefault: freezed == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String?,frontFemale: freezed == frontFemale ? _self.frontFemale : frontFemale // ignore: cast_nullable_to_non_nullable
as String?,frontShiny: freezed == frontShiny ? _self.frontShiny : frontShiny // ignore: cast_nullable_to_non_nullable
as String?,frontShinyFemale: freezed == frontShinyFemale ? _self.frontShinyFemale : frontShinyFemale // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
