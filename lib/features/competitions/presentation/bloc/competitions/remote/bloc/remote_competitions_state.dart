part of 'remote_competitions_bloc.dart';

@freezed
class RemoteCompetitionsState with _$RemoteCompetitionsState {
  const factory RemoteCompetitionsState.remotePopularLeaguesLoading() =
      _remotePopularLeaguesLoading;
  const factory RemoteCompetitionsState.remotePopularLeaguesLoaded({
    required List<PopularLeagueEntity> popularLeagues,
  }) = _remotePopularLeaguesLoaded;
  const factory RemoteCompetitionsState.remotePopularLeaguesError({
    required DioException error,
  }) = _remotePopularLeaguesError;
}
