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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  remotePopularLeaguesLoading,TResult Function( List<PopularLeagueEntity> popularLeagues,  bool isFromCache,  DateTime? lastUpdated)?  remotePopularLeaguesLoaded,TResult Function( DioException error,  List<PopularLeagueEntity>? cachedData,  DateTime? lastUpdated)?  remotePopularLeaguesError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _remotePopularLeaguesLoading() when remotePopularLeaguesLoading != null:
return remotePopularLeaguesLoading();case _remotePopularLeaguesLoaded() when remotePopularLeaguesLoaded != null:
return remotePopularLeaguesLoaded(_that.popularLeagues,_that.isFromCache,_that.lastUpdated);case _remotePopularLeaguesError() when remotePopularLeaguesError != null:
return remotePopularLeaguesError(_that.error,_that.cachedData,_that.lastUpdated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  remotePopularLeaguesLoading,required TResult Function( List<PopularLeagueEntity> popularLeagues,  bool isFromCache,  DateTime? lastUpdated)  remotePopularLeaguesLoaded,required TResult Function( DioException error,  List<PopularLeagueEntity>? cachedData,  DateTime? lastUpdated)  remotePopularLeaguesError,}) {final _that = this;
switch (_that) {
case _remotePopularLeaguesLoading():
return remotePopularLeaguesLoading();case _remotePopularLeaguesLoaded():
return remotePopularLeaguesLoaded(_that.popularLeagues,_that.isFromCache,_that.lastUpdated);case _remotePopularLeaguesError():
return remotePopularLeaguesError(_that.error,_that.cachedData,_that.lastUpdated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  remotePopularLeaguesLoading,TResult? Function( List<PopularLeagueEntity> popularLeagues,  bool isFromCache,  DateTime? lastUpdated)?  remotePopularLeaguesLoaded,TResult? Function( DioException error,  List<PopularLeagueEntity>? cachedData,  DateTime? lastUpdated)?  remotePopularLeaguesError,}) {final _that = this;
switch (_that) {
case _remotePopularLeaguesLoading() when remotePopularLeaguesLoading != null:
return remotePopularLeaguesLoading();case _remotePopularLeaguesLoaded() when remotePopularLeaguesLoaded != null:
return remotePopularLeaguesLoaded(_that.popularLeagues,_that.isFromCache,_that.lastUpdated);case _remotePopularLeaguesError() when remotePopularLeaguesError != null:
return remotePopularLeaguesError(_that.error,_that.cachedData,_that.lastUpdated);case _:
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
  const _remotePopularLeaguesLoaded({required final  List<PopularLeagueEntity> popularLeagues, this.isFromCache = false, this.lastUpdated}): _popularLeagues = popularLeagues;
  

 final  List<PopularLeagueEntity> _popularLeagues;
 List<PopularLeagueEntity> get popularLeagues {
  if (_popularLeagues is EqualUnmodifiableListView) return _popularLeagues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_popularLeagues);
}

@JsonKey() final  bool isFromCache;
// ✅ New: indicates offline data
 final  DateTime? lastUpdated;

/// Create a copy of RemoteCompetitionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$remotePopularLeaguesLoadedCopyWith<_remotePopularLeaguesLoaded> get copyWith => __$remotePopularLeaguesLoadedCopyWithImpl<_remotePopularLeaguesLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _remotePopularLeaguesLoaded&&const DeepCollectionEquality().equals(other._popularLeagues, _popularLeagues)&&(identical(other.isFromCache, isFromCache) || other.isFromCache == isFromCache)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_popularLeagues),isFromCache,lastUpdated);

@override
String toString() {
  return 'RemoteCompetitionsState.remotePopularLeaguesLoaded(popularLeagues: $popularLeagues, isFromCache: $isFromCache, lastUpdated: $lastUpdated)';
}


}

/// @nodoc
abstract mixin class _$remotePopularLeaguesLoadedCopyWith<$Res> implements $RemoteCompetitionsStateCopyWith<$Res> {
  factory _$remotePopularLeaguesLoadedCopyWith(_remotePopularLeaguesLoaded value, $Res Function(_remotePopularLeaguesLoaded) _then) = __$remotePopularLeaguesLoadedCopyWithImpl;
@useResult
$Res call({
 List<PopularLeagueEntity> popularLeagues, bool isFromCache, DateTime? lastUpdated
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
@pragma('vm:prefer-inline') $Res call({Object? popularLeagues = null,Object? isFromCache = null,Object? lastUpdated = freezed,}) {
  return _then(_remotePopularLeaguesLoaded(
popularLeagues: null == popularLeagues ? _self._popularLeagues : popularLeagues // ignore: cast_nullable_to_non_nullable
as List<PopularLeagueEntity>,isFromCache: null == isFromCache ? _self.isFromCache : isFromCache // ignore: cast_nullable_to_non_nullable
as bool,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc


class _remotePopularLeaguesError implements RemoteCompetitionsState {
  const _remotePopularLeaguesError({required this.error, final  List<PopularLeagueEntity>? cachedData, this.lastUpdated}): _cachedData = cachedData;
  

 final  DioException error;
 final  List<PopularLeagueEntity>? _cachedData;
 List<PopularLeagueEntity>? get cachedData {
  final value = _cachedData;
  if (value == null) return null;
  if (_cachedData is EqualUnmodifiableListView) return _cachedData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

// ✅ New: fallback cached data
 final  DateTime? lastUpdated;

/// Create a copy of RemoteCompetitionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$remotePopularLeaguesErrorCopyWith<_remotePopularLeaguesError> get copyWith => __$remotePopularLeaguesErrorCopyWithImpl<_remotePopularLeaguesError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _remotePopularLeaguesError&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other._cachedData, _cachedData)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated));
}


@override
int get hashCode => Object.hash(runtimeType,error,const DeepCollectionEquality().hash(_cachedData),lastUpdated);

@override
String toString() {
  return 'RemoteCompetitionsState.remotePopularLeaguesError(error: $error, cachedData: $cachedData, lastUpdated: $lastUpdated)';
}


}

/// @nodoc
abstract mixin class _$remotePopularLeaguesErrorCopyWith<$Res> implements $RemoteCompetitionsStateCopyWith<$Res> {
  factory _$remotePopularLeaguesErrorCopyWith(_remotePopularLeaguesError value, $Res Function(_remotePopularLeaguesError) _then) = __$remotePopularLeaguesErrorCopyWithImpl;
@useResult
$Res call({
 DioException error, List<PopularLeagueEntity>? cachedData, DateTime? lastUpdated
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
@pragma('vm:prefer-inline') $Res call({Object? error = null,Object? cachedData = freezed,Object? lastUpdated = freezed,}) {
  return _then(_remotePopularLeaguesError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as DioException,cachedData: freezed == cachedData ? _self._cachedData : cachedData // ignore: cast_nullable_to_non_nullable
as List<PopularLeagueEntity>?,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
