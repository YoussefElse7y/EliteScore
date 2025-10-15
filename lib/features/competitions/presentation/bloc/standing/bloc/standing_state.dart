part of 'standing_bloc.dart';

@freezed
class StandingState with _$StandingState {
  const factory StandingState.standingLoading() = _StandingLoading;
  const factory StandingState.standingLoaded(List<TeamStandingEntity>? standing) =
      _StandingLoaded;
const factory StandingState.standingError(DioException error) =_StandingError;
}
