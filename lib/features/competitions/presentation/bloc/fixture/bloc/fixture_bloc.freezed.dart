// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fixture_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FixtureEvent {

 int get leagueId;
/// Create a copy of FixtureEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FixtureEventCopyWith<FixtureEvent> get copyWith => _$FixtureEventCopyWithImpl<FixtureEvent>(this as FixtureEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FixtureEvent&&(identical(other.leagueId, leagueId) || other.leagueId == leagueId));
}


@override
int get hashCode => Object.hash(runtimeType,leagueId);

@override
String toString() {
  return 'FixtureEvent(leagueId: $leagueId)';
}


}

/// @nodoc
abstract mixin class $FixtureEventCopyWith<$Res>  {
  factory $FixtureEventCopyWith(FixtureEvent value, $Res Function(FixtureEvent) _then) = _$FixtureEventCopyWithImpl;
@useResult
$Res call({
 int leagueId
});




}
/// @nodoc
class _$FixtureEventCopyWithImpl<$Res>
    implements $FixtureEventCopyWith<$Res> {
  _$FixtureEventCopyWithImpl(this._self, this._then);

  final FixtureEvent _self;
  final $Res Function(FixtureEvent) _then;

/// Create a copy of FixtureEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? leagueId = null,}) {
  return _then(_self.copyWith(
leagueId: null == leagueId ? _self.leagueId : leagueId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FixtureEvent].
extension FixtureEventPatterns on FixtureEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetFixture value)?  getFixture,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetFixture() when getFixture != null:
return getFixture(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetFixture value)  getFixture,}){
final _that = this;
switch (_that) {
case _GetFixture():
return getFixture(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetFixture value)?  getFixture,}){
final _that = this;
switch (_that) {
case _GetFixture() when getFixture != null:
return getFixture(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int leagueId)?  getFixture,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetFixture() when getFixture != null:
return getFixture(_that.leagueId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int leagueId)  getFixture,}) {final _that = this;
switch (_that) {
case _GetFixture():
return getFixture(_that.leagueId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int leagueId)?  getFixture,}) {final _that = this;
switch (_that) {
case _GetFixture() when getFixture != null:
return getFixture(_that.leagueId);case _:
  return null;

}
}

}

/// @nodoc


class _GetFixture implements FixtureEvent {
  const _GetFixture(this.leagueId);
  

@override final  int leagueId;

/// Create a copy of FixtureEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetFixtureCopyWith<_GetFixture> get copyWith => __$GetFixtureCopyWithImpl<_GetFixture>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetFixture&&(identical(other.leagueId, leagueId) || other.leagueId == leagueId));
}


@override
int get hashCode => Object.hash(runtimeType,leagueId);

@override
String toString() {
  return 'FixtureEvent.getFixture(leagueId: $leagueId)';
}


}

/// @nodoc
abstract mixin class _$GetFixtureCopyWith<$Res> implements $FixtureEventCopyWith<$Res> {
  factory _$GetFixtureCopyWith(_GetFixture value, $Res Function(_GetFixture) _then) = __$GetFixtureCopyWithImpl;
@override @useResult
$Res call({
 int leagueId
});




}
/// @nodoc
class __$GetFixtureCopyWithImpl<$Res>
    implements _$GetFixtureCopyWith<$Res> {
  __$GetFixtureCopyWithImpl(this._self, this._then);

  final _GetFixture _self;
  final $Res Function(_GetFixture) _then;

/// Create a copy of FixtureEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? leagueId = null,}) {
  return _then(_GetFixture(
null == leagueId ? _self.leagueId : leagueId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$FixtureState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FixtureState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FixtureState()';
}


}

/// @nodoc
class $FixtureStateCopyWith<$Res>  {
$FixtureStateCopyWith(FixtureState _, $Res Function(FixtureState) __);
}


/// Adds pattern-matching-related methods to [FixtureState].
extension FixtureStatePatterns on FixtureState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MachesLoading value)?  machesLoading,TResult Function( _MachesLoaded value)?  machesLoaded,TResult Function( _MachesError value)?  machesError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MachesLoading() when machesLoading != null:
return machesLoading(_that);case _MachesLoaded() when machesLoaded != null:
return machesLoaded(_that);case _MachesError() when machesError != null:
return machesError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MachesLoading value)  machesLoading,required TResult Function( _MachesLoaded value)  machesLoaded,required TResult Function( _MachesError value)  machesError,}){
final _that = this;
switch (_that) {
case _MachesLoading():
return machesLoading(_that);case _MachesLoaded():
return machesLoaded(_that);case _MachesError():
return machesError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MachesLoading value)?  machesLoading,TResult? Function( _MachesLoaded value)?  machesLoaded,TResult? Function( _MachesError value)?  machesError,}){
final _that = this;
switch (_that) {
case _MachesLoading() when machesLoading != null:
return machesLoading(_that);case _MachesLoaded() when machesLoaded != null:
return machesLoaded(_that);case _MachesError() when machesError != null:
return machesError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  machesLoading,TResult Function( List<MatchEntity> maches)?  machesLoaded,TResult Function( String error)?  machesError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MachesLoading() when machesLoading != null:
return machesLoading();case _MachesLoaded() when machesLoaded != null:
return machesLoaded(_that.maches);case _MachesError() when machesError != null:
return machesError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  machesLoading,required TResult Function( List<MatchEntity> maches)  machesLoaded,required TResult Function( String error)  machesError,}) {final _that = this;
switch (_that) {
case _MachesLoading():
return machesLoading();case _MachesLoaded():
return machesLoaded(_that.maches);case _MachesError():
return machesError(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  machesLoading,TResult? Function( List<MatchEntity> maches)?  machesLoaded,TResult? Function( String error)?  machesError,}) {final _that = this;
switch (_that) {
case _MachesLoading() when machesLoading != null:
return machesLoading();case _MachesLoaded() when machesLoaded != null:
return machesLoaded(_that.maches);case _MachesError() when machesError != null:
return machesError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _MachesLoading implements FixtureState {
  const _MachesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MachesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FixtureState.machesLoading()';
}


}




/// @nodoc


class _MachesLoaded implements FixtureState {
  const _MachesLoaded(final  List<MatchEntity> maches): _maches = maches;
  

 final  List<MatchEntity> _maches;
 List<MatchEntity> get maches {
  if (_maches is EqualUnmodifiableListView) return _maches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_maches);
}


/// Create a copy of FixtureState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MachesLoadedCopyWith<_MachesLoaded> get copyWith => __$MachesLoadedCopyWithImpl<_MachesLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MachesLoaded&&const DeepCollectionEquality().equals(other._maches, _maches));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_maches));

@override
String toString() {
  return 'FixtureState.machesLoaded(maches: $maches)';
}


}

/// @nodoc
abstract mixin class _$MachesLoadedCopyWith<$Res> implements $FixtureStateCopyWith<$Res> {
  factory _$MachesLoadedCopyWith(_MachesLoaded value, $Res Function(_MachesLoaded) _then) = __$MachesLoadedCopyWithImpl;
@useResult
$Res call({
 List<MatchEntity> maches
});




}
/// @nodoc
class __$MachesLoadedCopyWithImpl<$Res>
    implements _$MachesLoadedCopyWith<$Res> {
  __$MachesLoadedCopyWithImpl(this._self, this._then);

  final _MachesLoaded _self;
  final $Res Function(_MachesLoaded) _then;

/// Create a copy of FixtureState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? maches = null,}) {
  return _then(_MachesLoaded(
null == maches ? _self._maches : maches // ignore: cast_nullable_to_non_nullable
as List<MatchEntity>,
  ));
}


}

/// @nodoc


class _MachesError implements FixtureState {
  const _MachesError(this.error);
  

 final  String error;

/// Create a copy of FixtureState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MachesErrorCopyWith<_MachesError> get copyWith => __$MachesErrorCopyWithImpl<_MachesError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MachesError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'FixtureState.machesError(error: $error)';
}


}

/// @nodoc
abstract mixin class _$MachesErrorCopyWith<$Res> implements $FixtureStateCopyWith<$Res> {
  factory _$MachesErrorCopyWith(_MachesError value, $Res Function(_MachesError) _then) = __$MachesErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$MachesErrorCopyWithImpl<$Res>
    implements _$MachesErrorCopyWith<$Res> {
  __$MachesErrorCopyWithImpl(this._self, this._then);

  final _MachesError _self;
  final $Res Function(_MachesError) _then;

/// Create a copy of FixtureState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_MachesError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
