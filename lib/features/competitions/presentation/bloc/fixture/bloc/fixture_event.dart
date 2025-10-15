part of 'fixture_bloc.dart';

@freezed
abstract class FixtureEvent with _$FixtureEvent {
  const factory FixtureEvent.getFixture(int leagueId) = _GetFixture;
}