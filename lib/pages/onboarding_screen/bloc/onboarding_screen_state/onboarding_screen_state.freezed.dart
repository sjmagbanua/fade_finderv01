// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingScreenState {

 String get message; int get index;
/// Create a copy of OnboardingScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingScreenStateCopyWith<OnboardingScreenState> get copyWith => _$OnboardingScreenStateCopyWithImpl<OnboardingScreenState>(this as OnboardingScreenState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as OnboardingScreenState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingScreenState&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.index, _this.index) || other.index == _this.index));
}


@override
int get hashCode {
  final _this = this as OnboardingScreenState;
  return Object.hash(runtimeType,_this.message,_this.index);
}

@override
String toString() {
  final _this = this as OnboardingScreenState;
  return 'OnboardingScreenState(message: ${_this.message}, index: ${_this.index})';
}


}

/// @nodoc
abstract mixin class $OnboardingScreenStateCopyWith<$Res>  {
  factory $OnboardingScreenStateCopyWith(OnboardingScreenState value, $Res Function(OnboardingScreenState) _then) = _$OnboardingScreenStateCopyWithImpl;
@useResult
$Res call({
 String message, int index
});




}
/// @nodoc
class _$OnboardingScreenStateCopyWithImpl<$Res>
    implements $OnboardingScreenStateCopyWith<$Res> {
  _$OnboardingScreenStateCopyWithImpl(this._self, this._then);

  final OnboardingScreenState _self;
  final $Res Function(OnboardingScreenState) _then;

/// Create a copy of OnboardingScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? index = null,}) {
  return _then(OnboardingScreenState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OnboardingScreenState].
extension OnboardingScreenStatePatterns on OnboardingScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnboardingScreenState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnboardingScreenState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnboardingScreenState value)  $default,){
final _that = this;
switch (_that) {
case _OnboardingScreenState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnboardingScreenState value)?  $default,){
final _that = this;
switch (_that) {
case _OnboardingScreenState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  int index)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnboardingScreenState() when $default != null:
return $default(_that.message,_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  int index)  $default,) {final _that = this;
switch (_that) {
case _OnboardingScreenState():
return $default(_that.message,_that.index);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  int index)?  $default,) {final _that = this;
switch (_that) {
case _OnboardingScreenState() when $default != null:
return $default(_that.message,_that.index);case _:
  return null;

}
}

}

/// @nodoc


class _OnboardingScreenState implements OnboardingScreenState {
  const _OnboardingScreenState({this.message = '', this.index = 0});
  

@override@JsonKey() final  String message;
@override@JsonKey() final  int index;

/// Create a copy of OnboardingScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnboardingScreenStateCopyWith<_OnboardingScreenState> get copyWith => __$OnboardingScreenStateCopyWithImpl<_OnboardingScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingScreenState&&(identical(other.message, message) || other.message == message)&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode {
    return Object.hash(runtimeType,message,index);
}

@override
String toString() {
    return 'OnboardingScreenState(message: $message, index: $index)';
}


}

/// @nodoc
abstract mixin class _$OnboardingScreenStateCopyWith<$Res> implements $OnboardingScreenStateCopyWith<$Res> {
  factory _$OnboardingScreenStateCopyWith(_OnboardingScreenState value, $Res Function(_OnboardingScreenState) _then) = __$OnboardingScreenStateCopyWithImpl;
@override @useResult
$Res call({
 String message, int index
});




}
/// @nodoc
class __$OnboardingScreenStateCopyWithImpl<$Res>
    implements _$OnboardingScreenStateCopyWith<$Res> {
  __$OnboardingScreenStateCopyWithImpl(this._self, this._then);

  final _OnboardingScreenState _self;
  final $Res Function(_OnboardingScreenState) _then;

/// Create a copy of OnboardingScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? index = null,}) {
  return _then(_OnboardingScreenState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
