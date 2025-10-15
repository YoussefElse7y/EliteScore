// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_competitions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RemoteCompetitionsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteCompetitionsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RemoteCompetitionsEvent()';
}


}

/// @nodoc
class $RemoteCompetitionsEventCopyWith<$Res>  {
$RemoteCompetitionsEventCopyWith(RemoteCompetitionsEvent _, $Res Function(RemoteCompetitionsEvent) __);
}


/// Adds pattern-matching-related methods to [RemoteCompetitionsEvent].
extension RemoteCompetitionsEventPatterns on RemoteCompetitionsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetPopularLeagues value)?  getPopularLeagues,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetPopularLeagues() when getPopularLeagues != null:
return getPopularLeagues(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetPopularLeagues value)  getPopularLeagues,}){
final _that = this;
switch (_that) {
case _GetPopularLeagues():
return getPopularLeagues(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetPopularLeagues value)?  getPopularLeagues,}){
final _that = this;
switch (_that) {
case _GetPopularLeagues() when getPopularLeagues != null:
return getPopularLeagues(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getPopularLeagues,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetPopularLeagues() when getPopularLeagues != null:
return getPopularLeagues();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getPopularLeagues,}) {final _that = this;
switch (_that) {
case _GetPopularLeagues():
return getPopularLeagues();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getPopularLeagues,}) {final _that = this;
switch (_that) {
case _GetPopularLeagues() when getPopularLeagues != null:
return getPopularLeagues();case _:
  return null;

}
}

}

/// @nodoc


class _GetPopularLeagues implements RemoteCompetitionsEvent {
  const _GetPopularLeagues();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPopularLeagues);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RemoteCompetitionsEvent.getPopularLeagues()';
}


}




/// @nodoc
mixin _$RemoteCompetitionsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteCompetitionsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RemoteCompetitionsState()';
}


}

/// @nodoc
class $RemoteCompetitionsStateCopyWith<$Res>  {
$RemoteCompetitionsStateCopyWith(RemoteCompetitionsState _, $Res Function(RemoteCompetitionsState) __);
}


/// Adds pattern-matching-related methods to [RemoteCompetitionsState].
extension RemoteCompetitionsStatePatterns on RemoteCompetitionsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _remotePopularLeaguesLoading value)?  remotePopularLeaguesLoading,TResult Function( _remotePopularLeaguesLoaded value)?  remotePopularLeaguesLoaded,TResult Function( _remotePopularLeaguesError value)?  remotePopularLeaguesError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _remotePopularLeaguesLoading() when remotePopularLeaguesLoading != null:
return remotePopularLeaguesLoading(_that);case _remotePopularLeaguesLoaded() when remotePopularLeaguesLoaded != null:
return remotePopularLeaguesLoaded(_that);case _remotePopularLeaguesError() when remotePopularLeaguesError != null:
return remotePopularLeaguesError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _remotePopularLeaguesLoading value)  remotePopularLeaguesLoading,required TResult Function( _remotePopularLeaguesLoaded value)  remotePopularLeaguesLoaded,required TResult Function( _remotePopularLeaguesError value)  remotePopularLeaguesError,}){
final _that = this;
switch (_that) {
case _remotePopularLeaguesLoading():
return remotePopularLeaguesLoading(_that);case _remotePopularLeaguesLoaded():
return remotePopularLeaguesLoaded(_that);case _remotePopularLeaguesError():
return remotePopularLeaguesError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _remotePopularLeaguesLoading value)?  remotePopularLeaguesLoading,TResult? Function( _remotePopularLeaguesLoaded value)?  remotePopularLeaguesLoaded,TResult? Function( _remotePopularLeaguesError value)?  remotePopularLeaguesError,}){
final _that = this;
switch (_that) {
case _remotePopularLeaguesLoading() when remotePopularLeaguesLoading != null:
return remotePopularLeaguesLoading(_that);case _remotePopularLeaguesLoaded() when remotePopularLeaguesLoaded != null:
return remotePopularLeaguesLoaded(_that);case _remotePopularLeaguesError() when remotePopularLeaguesError != null:
return remotePopularLeaguesError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  remotePopularLeaguesLoading,TResult Function( List<PopularLeagueEntity> popularLeagues)?  remotePopularLeaguesLoaded,TResult Function( DioException error)?  remotePopularLeaguesError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _remotePopularLeaguesLoading() when remotePopularLeaguesLoading != null:
return remotePopularLeaguesLoading();case _remotePopularLeaguesLoaded() when remotePopularLeaguesLoaded != null:
return remotePopularLeaguesLoaded(_that.popularLeagues);case _remotePopularLeaguesError() when remotePopularLeaguesError != null:
return remotePopularLeaguesError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  remotePopularLeaguesLoading,required TResult Function( List<PopularLeagueEntity> popularLeagues)  remotePopularLeaguesLoaded,required TResult Function( DioException error)  remotePopularLeaguesError,}) {final _that = this;
switch (_that) {
case _remotePopularLeaguesLoading():
return remotePopularLeaguesLoading();case _remotePopularLeaguesLoaded():
return remotePopularLeaguesLoaded(_that.popularLeagues);case _remotePopularLeaguesError():
return remotePopularLeaguesError(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  remotePopularLeaguesLoading,TResult? Function( List<PopularLeagueEntity> popularLeagues)?  remotePopularLeaguesLoaded,TResult? Function( DioException error)?  remotePopularLeaguesError,}) {final _that = this;
switch (_that) {
case _remotePopularLeaguesLoading() when remotePopularLeaguesLoading != null:
return remotePopularLeaguesLoading();case _remotePopularLeaguesLoaded() when remotePopularLeaguesLoaded != null:
return remotePopularLeaguesLoaded(_that.popularLeagues);case _remotePopularLeaguesError() when remotePopularLeaguesError != null:
return remotePopularLeaguesError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _remotePopularLeaguesLoading implements RemoteCompetitionsState {
  const _remotePopularLeaguesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _remotePopularLeaguesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RemoteCompetitionsState.remotePopularLeaguesLoading()';
}


}




/// @nodoc


class _remotePopularLeaguesLoaded implements RemoteCompetitionsState {
  const _remotePopularLeaguesLoaded({required final  List<PopularLeagueEntity> popularLeagues}): _popularLeagues = popularLeagues;
  

 final  List<PopularLeagueEntity> _popularLeagues;
 List<PopularLeagueEntity> get popularLeagues {
  if (_popularLeagues is EqualUnmodifiableListView) return _popularLeagues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_popularLeagues);
}


/// Create a copy of RemoteCompetitionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$remotePopularLeaguesLoadedCopyWith<_remotePopularLeaguesLoaded> get copyWith => __$remotePopularLeaguesLoadedCopyWithImpl<_remotePopularLeaguesLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _remotePopularLeaguesLoaded&&const DeepCollectionEquality().equals(other._popularLeagues, _popularLeagues));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_popularLeagues));

@override
String toString() {
  return 'RemoteCompetitionsState.remotePopularLeaguesLoaded(popularLeagues: $popularLeagues)';
}


}

/// @nodoc
abstract mixin class _$remotePopularLeaguesLoadedCopyWith<$Res> implements $RemoteCompetitionsStateCopyWith<$Res> {
  factory _$remotePopularLeaguesLoadedCopyWith(_remotePopularLeaguesLoaded value, $Res Function(_remotePopularLeaguesLoaded) _then) = __$remotePopularLeaguesLoadedCopyWithImpl;
@useResult
$Res call({
 List<PopularLeagueEntity> popularLeagues
});




}
/// @nodoc
class __$remotePopularLeaguesLoadedCopyWithImpl<$Res>
    implements _$remotePopularLeaguesLoadedCopyWith<$Res> {
  __$remotePopularLeaguesLoadedCopyWithImpl(this._self, this._then);

  final _remotePopularLeaguesLoaded _self;
  final $Res Function(_remotePopularLeaguesLoaded) _then;

/// Create a copy of RemoteCompetitionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? popularLeagues = null,}) {
  return _then(_remotePopularLeaguesLoaded(
popularLeagues: null == popularLeagues ? _self._popularLeagues : popularLeagues // ignore: cast_nullable_to_non_nullable
as List<PopularLeagueEntity>,
  ));
}


}

/// @nodoc


class _remotePopularLeaguesError implements RemoteCompetitionsState {
  const _remotePopularLeaguesError({required this.error});
  

 final  DioException error;

/// Create a copy of RemoteCompetitionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$remotePopularLeaguesErrorCopyWith<_remotePopularLeaguesError> get copyWith => __$remotePopularLeaguesErrorCopyWithImpl<_remotePopularLeaguesError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _remotePopularLeaguesError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'RemoteCompetitionsState.remotePopularLeaguesError(error: $error)';
}


}

/// @nodoc
abstract mixin class _$remotePopularLeaguesErrorCopyWith<$Res> implements $RemoteCompetitionsStateCopyWith<$Res> {
  factory _$remotePopularLeaguesErrorCopyWith(_remotePopularLeaguesError value, $Res Function(_remotePopularLeaguesError) _then) = __$remotePopularLeaguesErrorCopyWithImpl;
@useResult
$Res call({
 DioException error
});




}
/// @nodoc
class __$remotePopularLeaguesErrorCopyWithImpl<$Res>
    implements _$remotePopularLeaguesErrorCopyWith<$Res> {
  __$remotePopularLeaguesErrorCopyWithImpl(this._self, this._then);

  final _remotePopularLeaguesError _self;
  final $Res Function(_remotePopularLeaguesError) _then;

/// Create a copy of RemoteCompetitionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_remotePopularLeaguesError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as DioException,
  ));
}


}

// dart format on
