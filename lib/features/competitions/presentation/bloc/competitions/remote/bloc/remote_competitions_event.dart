part of 'remote_competitions_bloc.dart';

@freezed
class RemoteCompetitionsEvent with _$RemoteCompetitionsEvent {
  const factory RemoteCompetitionsEvent.getPopularLeagues() = _GetPopularLeagues;
  
}