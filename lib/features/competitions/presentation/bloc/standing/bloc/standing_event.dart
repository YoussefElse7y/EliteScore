part of 'standing_bloc.dart';

@freezed
abstract class StandingEvent with _$StandingEvent {
  const factory StandingEvent.getStanding(int leagueId) = _GetStanding;
}