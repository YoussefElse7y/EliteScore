import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:football_app/core/resources/data_state.dart';
import 'package:football_app/features/competitions/domain/entities/popular_league_entity.dart';
import 'package:football_app/features/competitions/domain/usecases/get_popular_leagues.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'remote_competitions_event.dart';
part 'remote_competitions_state.dart';
part 'remote_competitions_bloc.freezed.dart';

class RemoteCompetitionsBloc
    extends Bloc<RemoteCompetitionsEvent, RemoteCompetitionsState> {
  final GetPopularLeaguesUseCase _fetchPopularLeagues;
  RemoteCompetitionsBloc(this._fetchPopularLeagues)
    : super(const RemoteCompetitionsState.remotePopularLeaguesLoading()) {
    on<_GetPopularLeagues>((event, emit) async {
      await event.when(
        getPopularLeagues: () async {
          emit(const RemoteCompetitionsState.remotePopularLeaguesLoading());

          try {
            final result = await _fetchPopularLeagues.call(null);
            if (result is DataSuccess && result.data != null) {
              emit(
                RemoteCompetitionsState.remotePopularLeaguesLoaded(
                  popularLeagues: result.data!.popularLeagues,
                ),
              );
            } else if (result is DataFailed) {
              emit(
                RemoteCompetitionsState.remotePopularLeaguesError(
                  error: result.error!,
                ),
              );
            }
          } catch (e) {
            emit(
              RemoteCompetitionsState.remotePopularLeaguesError(
                error: DioException(
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
