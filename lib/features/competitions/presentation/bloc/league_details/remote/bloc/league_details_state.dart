part of 'league_details_bloc.dart';

@freezed
class LeagueDetailsState with _$LeagueDetailsState {
  const factory LeagueDetailsState.leagueDetailsLoading() = _leagueDetailsLoading;
  const factory LeagueDetailsState.leagueDetailsLoaded(LeagueEntity leagueDetails , String logoUrl) = _leagueDetailsLoaded;
  const factory LeagueDetailsState.leagueDetailsError(DioException error) = _leagueDetailsError;


}
