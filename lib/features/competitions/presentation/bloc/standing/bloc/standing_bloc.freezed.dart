// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'standing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StandingEvent {

 int get leagueId;
/// Create a copy of StandingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StandingEventCopyWith<StandingEvent> get copyWith => _$StandingEventCopyWithImpl<StandingEvent>(this as StandingEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StandingEvent&&(identical(other.leagueId, leagueId) || other.leagueId == leagueId));
}


@override
int get hashCode => Object.hash(runtimeType,leagueId);

@override
String toString() {
  return 'StandingEvent(leagueId: $leagueId)';
}


}

/// @nodoc
abstract mixin class $StandingEventCopyWith<$Res>  {
  factory $StandingEventCopyWith(StandingEvent value, $Res Function(StandingEvent) _then) = _$StandingEventCopyWithImpl;
@useResult
$Res call({
 int leagueId
});




}
/// @nodoc
class _$StandingEventCopyWithImpl<$Res>
    implements $StandingEventCopyWith<$Res> {
  _$StandingEventCopyWithImpl(this._self, this._then);

  final StandingEvent _self;
  final $Res Function(StandingEvent) _then;

/// Create a copy of StandingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? leagueId = null,}) {
  return _then(_self.copyWith(
leagueId: null == leagueId ? _self.leagueId : leagueId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [StandingEvent].
extension StandingEventPatterns on StandingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetStanding value)?  getStanding,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetStanding() when getStanding != null:
return getStanding(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetStanding value)  getStanding,}){
final _that = this;
switch (_that) {
case _GetStanding():
return getStanding(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetStanding value)?  getStanding,}){
final _that = this;
switch (_that) {
case _GetStanding() when getStanding != null:
return getStanding(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int leagueId)?  getStanding,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetStanding() when getStanding != null:
return getStanding(_that.leagueId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int leagueId)  getStanding,}) {final _that = this;
switch (_that) {
case _GetStanding():
return getStanding(_that.leagueId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int leagueId)?  getStanding,}) {final _that = this;
switch (_that) {
case _GetStanding() when getStanding != null:
return getStanding(_that.leagueId);case _:
  return null;

}
}

}

/// @nodoc


class _GetStanding implements StandingEvent {
  const _GetStanding(this.leagueId);
  

@override final  int leagueId;

/// Create a copy of StandingEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetStandingCopyWith<_GetStanding> get copyWith => __$GetStandingCopyWithImpl<_GetStanding>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetStanding&&(identical(other.leagueId, leagueId) || other.leagueId == leagueId));
}


@override
int get hashCode => Object.hash(runtimeType,leagueId);

@override
String toString() {
  return 'StandingEvent.getStanding(leagueId: $leagueId)';
}


}

/// @nodoc
abstract mixin class _$GetStandingCopyWith<$Res> implements $StandingEventCopyWith<$Res> {
  factory _$GetStandingCopyWith(_GetStanding value, $Res Function(_GetStanding) _then) = __$GetStandingCopyWithImpl;
@override @useResult
$Res call({
 int leagueId
});




}
/// @nodoc
class __$GetStandingCopyWithImpl<$Res>
    implements _$GetStandingCopyWith<$Res> {
  __$GetStandingCopyWithImpl(this._self, this._then);

  final _GetStanding _self;
  final $Res Function(_GetStanding) _then;

/// Create a copy of StandingEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? leagueId = null,}) {
  return _then(_GetStanding(
null == leagueId ? _self.leagueId : leagueId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$StandingState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StandingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StandingState()';
}


}

/// @nodoc
class $StandingStateCopyWith<$Res>  {
$StandingStateCopyWith(StandingState _, $Res Function(StandingState) __);
}


/// Adds pattern-matching-related methods to [StandingState].
extension StandingStatePatterns on StandingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _StandingLoading value)?  standingLoading,TResult Function( _StandingLoaded value)?  standingLoaded,TResult Function( _StandingError value)?  standingError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StandingLoading() when standingLoading != null:
return standingLoading(_that);case _StandingLoaded() when standingLoaded != null:
return standingLoaded(_that);case _StandingError() when standingError != null:
return standingError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _StandingLoading value)  standingLoading,required TResult Function( _StandingLoaded value)  standingLoaded,required TResult Function( _StandingError value)  standingError,}){
final _that = this;
switch (_that) {
case _StandingLoading():
return standingLoading(_that);case _StandingLoaded():
return standingLoaded(_that);case _StandingError():
return standingError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _StandingLoading value)?  standingLoading,TResult? Function( _StandingLoaded value)?  standingLoaded,TResult? Function( _StandingError value)?  standingError,}){
final _that = this;
switch (_that) {
case _StandingLoading() when standingLoading != null:
return standingLoading(_that);case _StandingLoaded() when standingLoaded != null:
return standingLoaded(_that);case _StandingError() when standingError != null:
return standingError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  standingLoading,TResult Function( List<TeamStandingEntity>? standing)?  standingLoaded,TResult Function( DioException error)?  standingError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StandingLoading() when standingLoading != null:
return standingLoading();case _StandingLoaded() when standingLoaded != null:
return standingLoaded(_that.standing);case _StandingError() when standingError != null:
return standingError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  standingLoading,required TResult Function( List<TeamStandingEntity>? standing)  standingLoaded,required TResult Function( DioException error)  standingError,}) {final _that = this;
switch (_that) {
case _StandingLoading():
return standingLoading();case _StandingLoaded():
return standingLoaded(_that.standing);case _StandingError():
return standingError(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  standingLoading,TResult? Function( List<TeamStandingEntity>? standing)?  standingLoaded,TResult? Function( DioException error)?  standingError,}) {final _that = this;
switch (_that) {
case _StandingLoading() when standingLoading != null:
return standingLoading();case _StandingLoaded() when standingLoaded != null:
return standingLoaded(_that.standing);case _StandingError() when standingError != null:
return standingError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _StandingLoading implements StandingState {
  const _StandingLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StandingLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StandingState.standingLoading()';
}


}




/// @nodoc


class _StandingLoaded implements StandingState {
  const _StandingLoaded(final  List<TeamStandingEntity>? standing): _standing = standing;
  

 final  List<TeamStandingEntity>? _standing;
 List<TeamStandingEntity>? get standing {
  final value = _standing;
  if (value == null) return null;
  if (_standing is EqualUnmodifiableListView) return _standing;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of StandingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StandingLoadedCopyWith<_StandingLoaded> get copyWith => __$StandingLoadedCopyWithImpl<_StandingLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StandingLoaded&&const DeepCollectionEquality().equals(other._standing, _standing));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_standing));

@override
String toString() {
  return 'StandingState.standingLoaded(standing: $standing)';
}


}

/// @nodoc
abstract mixin class _$StandingLoadedCopyWith<$Res> implements $StandingStateCopyWith<$Res> {
  factory _$StandingLoadedCopyWith(_StandingLoaded value, $Res Function(_StandingLoaded) _then) = __$StandingLoadedCopyWithImpl;
@useResult
$Res call({
 List<TeamStandingEntity>? standing
});




}
/// @nodoc
class __$StandingLoadedCopyWithImpl<$Res>
    implements _$StandingLoadedCopyWith<$Res> {
  __$StandingLoadedCopyWithImpl(this._self, this._then);

  final _StandingLoaded _self;
  final $Res Function(_StandingLoaded) _then;

/// Create a copy of StandingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? standing = freezed,}) {
  return _then(_StandingLoaded(
freezed == standing ? _self._standing : standing // ignore: cast_nullable_to_non_nullable
as List<TeamStandingEntity>?,
  ));
}


}

/// @nodoc


class _StandingError implements StandingState {
  const _StandingError(this.error);
  

 final  DioException error;

/// Create a copy of StandingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StandingErrorCopyWith<_StandingError> get copyWith => __$StandingErrorCopyWithImpl<_StandingError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StandingError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'StandingState.standingError(error: $error)';
}


}

/// @nodoc
abstract mixin class _$StandingErrorCopyWith<$Res> implements $StandingStateCopyWith<$Res> {
  factory _$StandingErrorCopyWith(_StandingError value, $Res Function(_StandingError) _then) = __$StandingErrorCopyWithImpl;
@useResult
$Res call({
 DioException error
});




}
/// @nodoc
class __$StandingErrorCopyWithImpl<$Res>
    implements _$StandingErrorCopyWith<$Res> {
  __$StandingErrorCopyWithImpl(this._self, this._then);

  final _StandingError _self;
  final $Res Function(_StandingError) _then;

/// Create a copy of StandingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_StandingError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as DioException,
  ));
}


}

// dart format on
