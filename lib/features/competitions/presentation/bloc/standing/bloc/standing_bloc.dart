import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_app/core/resources/data_state.dart';
import 'package:football_app/features/competitions/domain/entities/league_standing/league_standing_entity.dart';
import 'package:football_app/features/competitions/domain/usecases/get_league_standing_by_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'standing_event.dart';
part 'standing_state.dart';
part 'standing_bloc.freezed.dart';

class StandingBloc extends Bloc<StandingEvent, StandingState> {
  final GetLeagueStandingByIdUseCase _getLeagueStandingByIdUseCase;
  StandingBloc(this._getLeagueStandingByIdUseCase)
    : super(StandingState.standingLoading()) {
    on<StandingEvent>((event, emit) async {
      emit(StandingState.standingLoading());
      await event.when(
        getStanding: (leagueId) async {
          try {
            final response = await _getLeagueStandingByIdUseCase.call(leagueId);
            if (response is DataSuccess && response.data != null) {
              final standing = response.data!.response!.standing;
              emit(StandingState.standingLoaded(standing));
            }
            if (response is DataFailed) {
              emit(StandingState.standingError(DioException(
                requestOptions: RequestOptions(),
                type: DioExceptionType.unknown,
                error: response.error,
                message: response.error.toString(),
                )));
            }
          } catch (e) {
            emit(StandingState.standingError(DioException(
              requestOptions: RequestOptions(),
              type: DioExceptionType.unknown,
              error: e,
              message: e.toString(),
              )));
          }
        },
      );
    });
  }
}
