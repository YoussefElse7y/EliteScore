import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_app/core/resources/data_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';
import 'package:football_app/features/competitions/domain/entities/league_details/league_entity.dart';
import 'package:football_app/features/competitions/domain/usecases/get_league_details_by_id.dart';

part 'league_details_event.dart';
part 'league_details_state.dart';
part 'league_details_bloc.freezed.dart';

class LeagueDetailsBloc extends Bloc<LeagueDetailsEvent, LeagueDetailsState> {
  final GetLeagueDetailsByIdUseCase _getLeagueDetailsByIdUseCase;

  LeagueDetailsBloc(this._getLeagueDetailsByIdUseCase)
    : super(const LeagueDetailsState.leagueDetailsLoading()) {
    on<_GetLeagueDetails>((event, emit) async {
      await event.when(
        getLeagueDetails: (leagueId) async {
          emit(const LeagueDetailsState.leagueDetailsLoading());
          try {
            final response = await _getLeagueDetailsByIdUseCase.call(leagueId);
            final logoResponse = await _getLeagueDetailsByIdUseCase.getLogo(
              leagueId,
            );
            final leagueDetails = response.data!.response.leagues;
            final logo = logoResponse.data ?? '';
            if (response is DataSuccess && response.data != null ) {
              emit(LeagueDetailsState.leagueDetailsLoaded(leagueDetails,logo));
            } else if (response is DataFailed) {
              emit(LeagueDetailsState.leagueDetailsError(response.error!));
            }
          } catch (e) {
            emit(
              LeagueDetailsState.leagueDetailsError(
                DioException(
                  message: e.toString(),
                  requestOptions: RequestOptions(path: ''),
                ),
              ),
            );
          }
        },
      );
    });
  }
}
