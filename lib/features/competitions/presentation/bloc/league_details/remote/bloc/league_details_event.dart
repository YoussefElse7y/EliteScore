part of 'league_details_bloc.dart';

@freezed
abstract class LeagueDetailsEvent with _$LeagueDetailsEvent {
  const factory LeagueDetailsEvent.getLeagueDetails(int leagueId) = _GetLeagueDetails;
}