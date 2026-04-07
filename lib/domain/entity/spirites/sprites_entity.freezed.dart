// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sprites_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpritesEntity {

@JsonKey(name: "back_default") String? get backDefault;@JsonKey(name: "back_female") String? get backFemale;@JsonKey(name: "back_shiny") String? get backShiny;@JsonKey(name: "back_shiny_female") String? get backShinyFemale;@JsonKey(name: "front_default") String? get frontDefault;@JsonKey(name: "front_female") String? get frontFemale;@JsonKey(name: "front_shiny") String? get frontShiny;@JsonKey(name: "front_shiny_female") String? get frontShinyFemale;@JsonKey(name: "other") OtherEntity? get other;
/// Create a copy of SpritesEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpritesEntityCopyWith<SpritesEntity> get copyWith => _$SpritesEntityCopyWithImpl<SpritesEntity>(this as SpritesEntity, _$identity);

  /// Serializes this SpritesEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpritesEntity&&(identical(other.backDefault, backDefault) || other.backDefault == backDefault)&&(identical(other.backFemale, backFemale) || other.backFemale == backFemale)&&(identical(other.backShiny, backShiny) || other.backShiny == backShiny)&&(identical(other.backShinyFemale, backShinyFemale) || other.backShinyFemale == backShinyFemale)&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault)&&(identical(other.frontFemale, frontFemale) || other.frontFemale == frontFemale)&&(identical(other.frontShiny, frontShiny) || other.frontShiny == frontShiny)&&(identical(other.frontShinyFemale, frontShinyFemale) || other.frontShinyFemale == frontShinyFemale)&&(identical(other.other, this.other) || other.other == this.other));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,backDefault,backFemale,backShiny,backShinyFemale,frontDefault,frontFemale,frontShiny,frontShinyFemale,other);

@override
String toString() {
  return 'SpritesEntity(backDefault: $backDefault, backFemale: $backFemale, backShiny: $backShiny, backShinyFemale: $backShinyFemale, frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny, frontShinyFemale: $frontShinyFemale, other: $other)';
}


}

/// @nodoc
abstract mixin class $SpritesEntityCopyWith<$Res>  {
  factory $SpritesEntityCopyWith(SpritesEntity value, $Res Function(SpritesEntity) _then) = _$SpritesEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "back_default") String? backDefault,@JsonKey(name: "back_female") String? backFemale,@JsonKey(name: "back_shiny") String? backShiny,@JsonKey(name: "back_shiny_female") String? backShinyFemale,@JsonKey(name: "front_default") String? frontDefault,@JsonKey(name: "front_female") String? frontFemale,@JsonKey(name: "front_shiny") String? frontShiny,@JsonKey(name: "front_shiny_female") String? frontShinyFemale,@JsonKey(name: "other") OtherEntity? other
});


$OtherEntityCopyWith<$Res>? get other;

}
/// @nodoc
class _$SpritesEntityCopyWithImpl<$Res>
    implements $SpritesEntityCopyWith<$Res> {
  _$SpritesEntityCopyWithImpl(this._self, this._then);

  final SpritesEntity _self;
  final $Res Function(SpritesEntity) _then;

/// Create a copy of SpritesEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? backDefault = freezed,Object? backFemale = freezed,Object? backShiny = freezed,Object? backShinyFemale = freezed,Object? frontDefault = freezed,Object? frontFemale = freezed,Object? frontShiny = freezed,Object? frontShinyFemale = freezed,Object? other = freezed,}) {
  return _then(_self.copyWith(
backDefault: freezed == backDefault ? _self.backDefault : backDefault // ignore: cast_nullable_to_non_nullable
as String?,backFemale: freezed == backFemale ? _self.backFemale : backFemale // ignore: cast_nullable_to_non_nullable
as String?,backShiny: freezed == backShiny ? _self.backShiny : backShiny // ignore: cast_nullable_to_non_nullable
as String?,backShinyFemale: freezed == backShinyFemale ? _self.backShinyFemale : backShinyFemale // ignore: cast_nullable_to_non_nullable
as String?,frontDefault: freezed == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String?,frontFemale: freezed == frontFemale ? _self.frontFemale : frontFemale // ignore: cast_nullable_to_non_nullable
as String?,frontShiny: freezed == frontShiny ? _self.frontShiny : frontShiny // ignore: cast_nullable_to_non_nullable
as String?,frontShinyFemale: freezed == frontShinyFemale ? _self.frontShinyFemale : frontShinyFemale // ignore: cast_nullable_to_non_nullable
as String?,other: freezed == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as OtherEntity?,
  ));
}
/// Create a copy of SpritesEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OtherEntityCopyWith<$Res>? get other {
    if (_self.other == null) {
    return null;
  }

  return $OtherEntityCopyWith<$Res>(_self.other!, (value) {
    return _then(_self.copyWith(other: value));
  });
}
}


/// Adds pattern-matching-related methods to [SpritesEntity].
extension SpritesEntityPatterns on SpritesEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpritesEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpritesEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpritesEntity value)  $default,){
final _that = this;
switch (_that) {
case _SpritesEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpritesEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SpritesEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "back_default")  String? backDefault, @JsonKey(name: "back_female")  String? backFemale, @JsonKey(name: "back_shiny")  String? backShiny, @JsonKey(name: "back_shiny_female")  String? backShinyFemale, @JsonKey(name: "front_default")  String? frontDefault, @JsonKey(name: "front_female")  String? frontFemale, @JsonKey(name: "front_shiny")  String? frontShiny, @JsonKey(name: "front_shiny_female")  String? frontShinyFemale, @JsonKey(name: "other")  OtherEntity? other)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpritesEntity() when $default != null:
return $default(_that.backDefault,_that.backFemale,_that.backShiny,_that.backShinyFemale,_that.frontDefault,_that.frontFemale,_that.frontShiny,_that.frontShinyFemale,_that.other);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "back_default")  String? backDefault, @JsonKey(name: "back_female")  String? backFemale, @JsonKey(name: "back_shiny")  String? backShiny, @JsonKey(name: "back_shiny_female")  String? backShinyFemale, @JsonKey(name: "front_default")  String? frontDefault, @JsonKey(name: "front_female")  String? frontFemale, @JsonKey(name: "front_shiny")  String? frontShiny, @JsonKey(name: "front_shiny_female")  String? frontShinyFemale, @JsonKey(name: "other")  OtherEntity? other)  $default,) {final _that = this;
switch (_that) {
case _SpritesEntity():
return $default(_that.backDefault,_that.backFemale,_that.backShiny,_that.backShinyFemale,_that.frontDefault,_that.frontFemale,_that.frontShiny,_that.frontShinyFemale,_that.other);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "back_default")  String? backDefault, @JsonKey(name: "back_female")  String? backFemale, @JsonKey(name: "back_shiny")  String? backShiny, @JsonKey(name: "back_shiny_female")  String? backShinyFemale, @JsonKey(name: "front_default")  String? frontDefault, @JsonKey(name: "front_female")  String? frontFemale, @JsonKey(name: "front_shiny")  String? frontShiny, @JsonKey(name: "front_shiny_female")  String? frontShinyFemale, @JsonKey(name: "other")  OtherEntity? other)?  $default,) {final _that = this;
switch (_that) {
case _SpritesEntity() when $default != null:
return $default(_that.backDefault,_that.backFemale,_that.backShiny,_that.backShinyFemale,_that.frontDefault,_that.frontFemale,_that.frontShiny,_that.frontShinyFemale,_that.other);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpritesEntity implements SpritesEntity {
  const _SpritesEntity({@JsonKey(name: "back_default") this.backDefault, @JsonKey(name: "back_female") this.backFemale, @JsonKey(name: "back_shiny") this.backShiny, @JsonKey(name: "back_shiny_female") this.backShinyFemale, @JsonKey(name: "front_default") this.frontDefault, @JsonKey(name: "front_female") this.frontFemale, @JsonKey(name: "front_shiny") this.frontShiny, @JsonKey(name: "front_shiny_female") this.frontShinyFemale, @JsonKey(name: "other") this.other});
  factory _SpritesEntity.fromJson(Map<String, dynamic> json) => _$SpritesEntityFromJson(json);

@override@JsonKey(name: "back_default") final  String? backDefault;
@override@JsonKey(name: "back_female") final  String? backFemale;
@override@JsonKey(name: "back_shiny") final  String? backShiny;
@override@JsonKey(name: "back_shiny_female") final  String? backShinyFemale;
@override@JsonKey(name: "front_default") final  String? frontDefault;
@override@JsonKey(name: "front_female") final  String? frontFemale;
@override@JsonKey(name: "front_shiny") final  String? frontShiny;
@override@JsonKey(name: "front_shiny_female") final  String? frontShinyFemale;
@override@JsonKey(name: "other") final  OtherEntity? other;

/// Create a copy of SpritesEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpritesEntityCopyWith<_SpritesEntity> get copyWith => __$SpritesEntityCopyWithImpl<_SpritesEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpritesEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpritesEntity&&(identical(other.backDefault, backDefault) || other.backDefault == backDefault)&&(identical(other.backFemale, backFemale) || other.backFemale == backFemale)&&(identical(other.backShiny, backShiny) || other.backShiny == backShiny)&&(identical(other.backShinyFemale, backShinyFemale) || other.backShinyFemale == backShinyFemale)&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault)&&(identical(other.frontFemale, frontFemale) || other.frontFemale == frontFemale)&&(identical(other.frontShiny, frontShiny) || other.frontShiny == frontShiny)&&(identical(other.frontShinyFemale, frontShinyFemale) || other.frontShinyFemale == frontShinyFemale)&&(identical(other.other, this.other) || other.other == this.other));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,backDefault,backFemale,backShiny,backShinyFemale,frontDefault,frontFemale,frontShiny,frontShinyFemale,other);

@override
String toString() {
  return 'SpritesEntity(backDefault: $backDefault, backFemale: $backFemale, backShiny: $backShiny, backShinyFemale: $backShinyFemale, frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny, frontShinyFemale: $frontShinyFemale, other: $other)';
}


}

/// @nodoc
abstract mixin class _$SpritesEntityCopyWith<$Res> implements $SpritesEntityCopyWith<$Res> {
  factory _$SpritesEntityCopyWith(_SpritesEntity value, $Res Function(_SpritesEntity) _then) = __$SpritesEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "back_default") String? backDefault,@JsonKey(name: "back_female") String? backFemale,@JsonKey(name: "back_shiny") String? backShiny,@JsonKey(name: "back_shiny_female") String? backShinyFemale,@JsonKey(name: "front_default") String? frontDefault,@JsonKey(name: "front_female") String? frontFemale,@JsonKey(name: "front_shiny") String? frontShiny,@JsonKey(name: "front_shiny_female") String? frontShinyFemale,@JsonKey(name: "other") OtherEntity? other
});


@override $OtherEntityCopyWith<$Res>? get other;

}
/// @nodoc
class __$SpritesEntityCopyWithImpl<$Res>
    implements _$SpritesEntityCopyWith<$Res> {
  __$SpritesEntityCopyWithImpl(this._self, this._then);

  final _SpritesEntity _self;
  final $Res Function(_SpritesEntity) _then;

/// Create a copy of SpritesEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? backDefault = freezed,Object? backFemale = freezed,Object? backShiny = freezed,Object? backShinyFemale = freezed,Object? frontDefault = freezed,Object? frontFemale = freezed,Object? frontShiny = freezed,Object? frontShinyFemale = freezed,Object? other = freezed,}) {
  return _then(_SpritesEntity(
backDefault: freezed == backDefault ? _self.backDefault : backDefault // ignore: cast_nullable_to_non_nullable
as String?,backFemale: freezed == backFemale ? _self.backFemale : backFemale // ignore: cast_nullable_to_non_nullable
as String?,backShiny: freezed == backShiny ? _self.backShiny : backShiny // ignore: cast_nullable_to_non_nullable
as String?,backShinyFemale: freezed == backShinyFemale ? _self.backShinyFemale : backShinyFemale // ignore: cast_nullable_to_non_nullable
as String?,frontDefault: freezed == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String?,frontFemale: freezed == frontFemale ? _self.frontFemale : frontFemale // ignore: cast_nullable_to_non_nullable
as String?,frontShiny: freezed == frontShiny ? _self.frontShiny : frontShiny // ignore: cast_nullable_to_non_nullable
as String?,frontShinyFemale: freezed == frontShinyFemale ? _self.frontShinyFemale : frontShinyFemale // ignore: cast_nullable_to_non_nullable
as String?,other: freezed == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as OtherEntity?,
  ));
}

/// Create a copy of SpritesEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OtherEntityCopyWith<$Res>? get other {
    if (_self.other == null) {
    return null;
  }

  return $OtherEntityCopyWith<$Res>(_self.other!, (value) {
    return _then(_self.copyWith(other: value));
  });
}
}

// dart format on
