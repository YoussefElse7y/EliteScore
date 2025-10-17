part of 'remote_competitions_bloc.dart';

@freezed
class RemoteCompetitionsState with _$RemoteCompetitionsState {
  const factory RemoteCompetitionsState.remotePopularLeaguesLoading() =
      _remotePopularLeaguesLoading;
  
  const factory RemoteCompetitionsState.remotePopularLeaguesLoaded({
    required List<PopularLeagueEntity> popularLeagues,
    @Default(false) bool isFromCache, // ✅ New: indicates offline data
    DateTime? lastUpdated, // ✅ New: timestamp
  }) = _remotePopularLeaguesLoaded;
  
  const factory RemoteCompetitionsState.remotePopularLeaguesError({
    required DioException error,
    List<PopularLeagueEntity>? cachedData, // ✅ New: fallback cached data
    DateTime? lastUpdated, // ✅ New: when cache was created
  }) = _remotePopularLeaguesError;
}