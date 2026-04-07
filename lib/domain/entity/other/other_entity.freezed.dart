// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'other_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OtherEntity {

@JsonKey(name: "home") HomeEntity? get home;@JsonKey(name: "showdown") SpritesEntity? get showdown;
/// Create a copy of OtherEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtherEntityCopyWith<OtherEntity> get copyWith => _$OtherEntityCopyWithImpl<OtherEntity>(this as OtherEntity, _$identity);

  /// Serializes this OtherEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtherEntity&&(identical(other.home, home) || other.home == home)&&(identical(other.showdown, showdown) || other.showdown == showdown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,home,showdown);

@override
String toString() {
  return 'OtherEntity(home: $home, showdown: $showdown)';
}


}

/// @nodoc
abstract mixin class $OtherEntityCopyWith<$Res>  {
  factory $OtherEntityCopyWith(OtherEntity value, $Res Function(OtherEntity) _then) = _$OtherEntityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "home") HomeEntity? home,@JsonKey(name: "showdown") SpritesEntity? showdown
});


$HomeEntityCopyWith<$Res>? get home;$SpritesEntityCopyWith<$Res>? get showdown;

}
/// @nodoc
class _$OtherEntityCopyWithImpl<$Res>
    implements $OtherEntityCopyWith<$Res> {
  _$OtherEntityCopyWithImpl(this._self, this._then);

  final OtherEntity _self;
  final $Res Function(OtherEntity) _then;

/// Create a copy of OtherEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? home = freezed,Object? showdown = freezed,}) {
  return _then(_self.copyWith(
home: freezed == home ? _self.home : home // ignore: cast_nullable_to_non_nullable
as HomeEntity?,showdown: freezed == showdown ? _self.showdown : showdown // ignore: cast_nullable_to_non_nullable
as SpritesEntity?,
  ));
}
/// Create a copy of OtherEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeEntityCopyWith<$Res>? get home {
    if (_self.home == null) {
    return null;
  }

  return $HomeEntityCopyWith<$Res>(_self.home!, (value) {
    return _then(_self.copyWith(home: value));
  });
}/// Create a copy of OtherEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpritesEntityCopyWith<$Res>? get showdown {
    if (_self.showdown == null) {
    return null;
  }

  return $SpritesEntityCopyWith<$Res>(_self.showdown!, (value) {
    return _then(_self.copyWith(showdown: value));
  });
}
}


/// Adds pattern-matching-related methods to [OtherEntity].
extension OtherEntityPatterns on OtherEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtherEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtherEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtherEntity value)  $default,){
final _that = this;
switch (_that) {
case _OtherEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtherEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OtherEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "home")  HomeEntity? home, @JsonKey(name: "showdown")  SpritesEntity? showdown)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OtherEntity() when $default != null:
return $default(_that.home,_that.showdown);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "home")  HomeEntity? home, @JsonKey(name: "showdown")  SpritesEntity? showdown)  $default,) {final _that = this;
switch (_that) {
case _OtherEntity():
return $default(_that.home,_that.showdown);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "home")  HomeEntity? home, @JsonKey(name: "showdown")  SpritesEntity? showdown)?  $default,) {final _that = this;
switch (_that) {
case _OtherEntity() when $default != null:
return $default(_that.home,_that.showdown);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OtherEntity implements OtherEntity {
  const _OtherEntity({@JsonKey(name: "home") this.home, @JsonKey(name: "showdown") this.showdown});
  factory _OtherEntity.fromJson(Map<String, dynamic> json) => _$OtherEntityFromJson(json);

@override@JsonKey(name: "home") final  HomeEntity? home;
@override@JsonKey(name: "showdown") final  SpritesEntity? showdown;

/// Create a copy of OtherEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtherEntityCopyWith<_OtherEntity> get copyWith => __$OtherEntityCopyWithImpl<_OtherEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OtherEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtherEntity&&(identical(other.home, home) || other.home == home)&&(identical(other.showdown, showdown) || other.showdown == showdown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,home,showdown);

@override
String toString() {
  return 'OtherEntity(home: $home, showdown: $showdown)';
}


}

/// @nodoc
abstract mixin class _$OtherEntityCopyWith<$Res> implements $OtherEntityCopyWith<$Res> {
  factory _$OtherEntityCopyWith(_OtherEntity value, $Res Function(_OtherEntity) _then) = __$OtherEntityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "home") HomeEntity? home,@JsonKey(name: "showdown") SpritesEntity? showdown
});


@override $HomeEntityCopyWith<$Res>? get home;@override $SpritesEntityCopyWith<$Res>? get showdown;

}
/// @nodoc
class __$OtherEntityCopyWithImpl<$Res>
    implements _$OtherEntityCopyWith<$Res> {
  __$OtherEntityCopyWithImpl(this._self, this._then);

  final _OtherEntity _self;
  final $Res Function(_OtherEntity) _then;

/// Create a copy of OtherEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? home = freezed,Object? showdown = freezed,}) {
  return _then(_OtherEntity(
home: freezed == home ? _self.home : home // ignore: cast_nullable_to_non_nullable
as HomeEntity?,showdown: freezed == showdown ? _self.showdown : showdown // ignore: cast_nullable_to_non_nullable
as SpritesEntity?,
  ));
}

/// Create a copy of OtherEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeEntityCopyWith<$Res>? get home {
    if (_self.home == null) {
    return null;
  }

  return $HomeEntityCopyWith<$Res>(_self.home!, (value) {
    return _then(_self.copyWith(home: value));
  });
}/// Create a copy of OtherEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpritesEntityCopyWith<$Res>? get showdown {
    if (_self.showdown == null) {
    return null;
  }

  return $SpritesEntityCopyWith<$Res>(_self.showdown!, (value) {
    return _then(_self.copyWith(showdown: value));
  });
}
}

// dart format on
