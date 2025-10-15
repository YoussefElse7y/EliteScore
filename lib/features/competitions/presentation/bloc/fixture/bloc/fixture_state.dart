part of 'fixture_bloc.dart';

@freezed
class FixtureState with _$FixtureState {
  const factory FixtureState.machesLoading() = _MachesLoading;
  const factory FixtureState.machesLoaded(List<MatchEntity> maches) =
      _MachesLoaded;
      const factory FixtureState.machesError(String error) = _MachesError;
}
