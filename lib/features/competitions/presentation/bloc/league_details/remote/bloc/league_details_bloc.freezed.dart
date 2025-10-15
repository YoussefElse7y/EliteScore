// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'league_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LeagueDetailsEvent {

 int get leagueId;
/// Create a copy of LeagueDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeagueDetailsEventCopyWith<LeagueDetailsEvent> get copyWith => _$LeagueDetailsEventCopyWithImpl<LeagueDetailsEvent>(this as LeagueDetailsEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeagueDetailsEvent&&(identical(other.leagueId, leagueId) || other.leagueId == leagueId));
}


@override
int get hashCode => Object.hash(runtimeType,leagueId);

@override
String toString() {
  return 'LeagueDetailsEvent(leagueId: $leagueId)';
}


}

/// @nodoc
abstract mixin class $LeagueDetailsEventCopyWith<$Res>  {
  factory $LeagueDetailsEventCopyWith(LeagueDetailsEvent value, $Res Function(LeagueDetailsEvent) _then) = _$LeagueDetailsEventCopyWithImpl;
@useResult
$Res call({
 int leagueId
});




}
/// @nodoc
class _$LeagueDetailsEventCopyWithImpl<$Res>
    implements $LeagueDetailsEventCopyWith<$Res> {
  _$LeagueDetailsEventCopyWithImpl(this._self, this._then);

  final LeagueDetailsEvent _self;
  final $Res Function(LeagueDetailsEvent) _then;

/// Create a copy of LeagueDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? leagueId = null,}) {
  return _then(_self.copyWith(
leagueId: null == leagueId ? _self.leagueId : leagueId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [LeagueDetailsEvent].
extension LeagueDetailsEventPatterns on LeagueDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetLeagueDetails value)?  getLeagueDetails,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetLeagueDetails() when getLeagueDetails != null:
return getLeagueDetails(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetLeagueDetails value)  getLeagueDetails,}){
final _that = this;
switch (_that) {
case _GetLeagueDetails():
return getLeagueDetails(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetLeagueDetails value)?  getLeagueDetails,}){
final _that = this;
switch (_that) {
case _GetLeagueDetails() when getLeagueDetails != null:
return getLeagueDetails(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int leagueId)?  getLeagueDetails,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetLeagueDetails() when getLeagueDetails != null:
return getLeagueDetails(_that.leagueId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int leagueId)  getLeagueDetails,}) {final _that = this;
switch (_that) {
case _GetLeagueDetails():
return getLeagueDetails(_that.leagueId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int leagueId)?  getLeagueDetails,}) {final _that = this;
switch (_that) {
case _GetLeagueDetails() when getLeagueDetails != null:
return getLeagueDetails(_that.leagueId);case _:
  return null;

}
}

}

/// @nodoc


class _GetLeagueDetails implements LeagueDetailsEvent {
  const _GetLeagueDetails(this.leagueId);
  

@override final  int leagueId;

/// Create a copy of LeagueDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetLeagueDetailsCopyWith<_GetLeagueDetails> get copyWith => __$GetLeagueDetailsCopyWithImpl<_GetLeagueDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetLeagueDetails&&(identical(other.leagueId, leagueId) || other.leagueId == leagueId));
}


@override
int get hashCode => Object.hash(runtimeType,leagueId);

@override
String toString() {
  return 'LeagueDetailsEvent.getLeagueDetails(leagueId: $leagueId)';
}


}

/// @nodoc
abstract mixin class _$GetLeagueDetailsCopyWith<$Res> implements $LeagueDetailsEventCopyWith<$Res> {
  factory _$GetLeagueDetailsCopyWith(_GetLeagueDetails value, $Res Function(_GetLeagueDetails) _then) = __$GetLeagueDetailsCopyWithImpl;
@override @useResult
$Res call({
 int leagueId
});




}
/// @nodoc
class __$GetLeagueDetailsCopyWithImpl<$Res>
    implements _$GetLeagueDetailsCopyWith<$Res> {
  __$GetLeagueDetailsCopyWithImpl(this._self, this._then);

  final _GetLeagueDetails _self;
  final $Res Function(_GetLeagueDetails) _then;

/// Create a copy of LeagueDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? leagueId = null,}) {
  return _then(_GetLeagueDetails(
null == leagueId ? _self.leagueId : leagueId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$LeagueDetailsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeagueDetailsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LeagueDetailsState()';
}


}

/// @nodoc
class $LeagueDetailsStateCopyWith<$Res>  {
$LeagueDetailsStateCopyWith(LeagueDetailsState _, $Res Function(LeagueDetailsState) __);
}


/// Adds pattern-matching-related methods to [LeagueDetailsState].
extension LeagueDetailsStatePatterns on LeagueDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _leagueDetailsLoading value)?  leagueDetailsLoading,TResult Function( _leagueDetailsLoaded value)?  leagueDetailsLoaded,TResult Function( _leagueDetailsError value)?  leagueDetailsError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _leagueDetailsLoading() when leagueDetailsLoading != null:
return leagueDetailsLoading(_that);case _leagueDetailsLoaded() when leagueDetailsLoaded != null:
return leagueDetailsLoaded(_that);case _leagueDetailsError() when leagueDetailsError != null:
return leagueDetailsError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _leagueDetailsLoading value)  leagueDetailsLoading,required TResult Function( _leagueDetailsLoaded value)  leagueDetailsLoaded,required TResult Function( _leagueDetailsError value)  leagueDetailsError,}){
final _that = this;
switch (_that) {
case _leagueDetailsLoading():
return leagueDetailsLoading(_that);case _leagueDetailsLoaded():
return leagueDetailsLoaded(_that);case _leagueDetailsError():
return leagueDetailsError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _leagueDetailsLoading value)?  leagueDetailsLoading,TResult? Function( _leagueDetailsLoaded value)?  leagueDetailsLoaded,TResult? Function( _leagueDetailsError value)?  leagueDetailsError,}){
final _that = this;
switch (_that) {
case _leagueDetailsLoading() when leagueDetailsLoading != null:
return leagueDetailsLoading(_that);case _leagueDetailsLoaded() when leagueDetailsLoaded != null:
return leagueDetailsLoaded(_that);case _leagueDetailsError() when leagueDetailsError != null:
return leagueDetailsError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  leagueDetailsLoading,TResult Function( LeagueEntity leagueDetails,  String logoUrl)?  leagueDetailsLoaded,TResult Function( DioException error)?  leagueDetailsError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _leagueDetailsLoading() when leagueDetailsLoading != null:
return leagueDetailsLoading();case _leagueDetailsLoaded() when leagueDetailsLoaded != null:
return leagueDetailsLoaded(_that.leagueDetails,_that.logoUrl);case _leagueDetailsError() when leagueDetailsError != null:
return leagueDetailsError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  leagueDetailsLoading,required TResult Function( LeagueEntity leagueDetails,  String logoUrl)  leagueDetailsLoaded,required TResult Function( DioException error)  leagueDetailsError,}) {final _that = this;
switch (_that) {
case _leagueDetailsLoading():
return leagueDetailsLoading();case _leagueDetailsLoaded():
return leagueDetailsLoaded(_that.leagueDetails,_that.logoUrl);case _leagueDetailsError():
return leagueDetailsError(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  leagueDetailsLoading,TResult? Function( LeagueEntity leagueDetails,  String logoUrl)?  leagueDetailsLoaded,TResult? Function( DioException error)?  leagueDetailsError,}) {final _that = this;
switch (_that) {
case _leagueDetailsLoading() when leagueDetailsLoading != null:
return leagueDetailsLoading();case _leagueDetailsLoaded() when leagueDetailsLoaded != null:
return leagueDetailsLoaded(_that.leagueDetails,_that.logoUrl);case _leagueDetailsError() when leagueDetailsError != null:
return leagueDetailsError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _leagueDetailsLoading implements LeagueDetailsState {
  const _leagueDetailsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _leagueDetailsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LeagueDetailsState.leagueDetailsLoading()';
}


}




/// @nodoc


class _leagueDetailsLoaded implements LeagueDetailsState {
  const _leagueDetailsLoaded(this.leagueDetails, this.logoUrl);
  

 final  LeagueEntity leagueDetails;
 final  String logoUrl;

/// Create a copy of LeagueDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$leagueDetailsLoadedCopyWith<_leagueDetailsLoaded> get copyWith => __$leagueDetailsLoadedCopyWithImpl<_leagueDetailsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _leagueDetailsLoaded&&(identical(other.leagueDetails, leagueDetails) || other.leagueDetails == leagueDetails)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl));
}


@override
int get hashCode => Object.hash(runtimeType,leagueDetails,logoUrl);

@override
String toString() {
  return 'LeagueDetailsState.leagueDetailsLoaded(leagueDetails: $leagueDetails, logoUrl: $logoUrl)';
}


}

/// @nodoc
abstract mixin class _$leagueDetailsLoadedCopyWith<$Res> implements $LeagueDetailsStateCopyWith<$Res> {
  factory _$leagueDetailsLoadedCopyWith(_leagueDetailsLoaded value, $Res Function(_leagueDetailsLoaded) _then) = __$leagueDetailsLoadedCopyWithImpl;
@useResult
$Res call({
 LeagueEntity leagueDetails, String logoUrl
});




}
/// @nodoc
class __$leagueDetailsLoadedCopyWithImpl<$Res>
    implements _$leagueDetailsLoadedCopyWith<$Res> {
  __$leagueDetailsLoadedCopyWithImpl(this._self, this._then);

  final _leagueDetailsLoaded _self;
  final $Res Function(_leagueDetailsLoaded) _then;

/// Create a copy of LeagueDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? leagueDetails = null,Object? logoUrl = null,}) {
  return _then(_leagueDetailsLoaded(
null == leagueDetails ? _self.leagueDetails : leagueDetails // ignore: cast_nullable_to_non_nullable
as LeagueEntity,null == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _leagueDetailsError implements LeagueDetailsState {
  const _leagueDetailsError(this.error);
  

 final  DioException error;

/// Create a copy of LeagueDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$leagueDetailsErrorCopyWith<_leagueDetailsError> get copyWith => __$leagueDetailsErrorCopyWithImpl<_leagueDetailsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _leagueDetailsError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'LeagueDetailsState.leagueDetailsError(error: $error)';
}


}

/// @nodoc
abstract mixin class _$leagueDetailsErrorCopyWith<$Res> implements $LeagueDetailsStateCopyWith<$Res> {
  factory _$leagueDetailsErrorCopyWith(_leagueDetailsError value, $Res Function(_leagueDetailsError) _then) = __$leagueDetailsErrorCopyWithImpl;
@useResult
$Res call({
 DioException error
});




}
/// @nodoc
class __$leagueDetailsErrorCopyWithImpl<$Res>
    implements _$leagueDetailsErrorCopyWith<$Res> {
  __$leagueDetailsErrorCopyWithImpl(this._self, this._then);

  final _leagueDetailsError _self;
  final $Res Function(_leagueDetailsError) _then;

/// Create a copy of LeagueDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_leagueDetailsError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as DioException,
  ));
}


}

// dart format on
