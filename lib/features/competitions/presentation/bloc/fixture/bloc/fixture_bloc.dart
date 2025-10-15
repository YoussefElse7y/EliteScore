import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_app/core/resources/data_state.dart';
import 'package:football_app/features/competitions/domain/entities/league_matches/match_entity.dart';
import 'package:football_app/features/competitions/domain/usecases/get_all_maches_by_league_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fixture_event.dart';
part 'fixture_state.dart';
part 'fixture_bloc.freezed.dart';

class FixtureBloc extends Bloc<FixtureEvent, FixtureState> {
  final GetAllMachesByLeagueIdUseCase _getAllMachesByLeagueIdUseCase;
  FixtureBloc(this._getAllMachesByLeagueIdUseCase)
    : super(FixtureState.machesLoading()) {
    on<FixtureEvent>((event, emit) async {
      emit(FixtureState.machesLoading());
      await event.when(
        getFixture: (leagueId) async {
          emit(const FixtureState.machesLoading());
          try {
            final response = await _getAllMachesByLeagueIdUseCase.call(
              leagueId,
            );
            if (response is DataSuccess && response.data != null) {
              final List<MatchEntity> matches = response.data!.matches!;
              print(matches);
              emit(FixtureState.machesLoaded(matches));
            } else {
              
              emit(FixtureState.machesError(response.error.toString()));
            }
          } catch (e) {
            emit(FixtureState.machesError(e.toString()));
          }
        },
      );
    });
  }
}
