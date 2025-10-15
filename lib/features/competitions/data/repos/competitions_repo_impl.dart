import 'package:dio/dio.dart';
import 'package:football_app/core/resources/data_state.dart';
import 'package:football_app/features/competitions/data/data_sources/remote/competitions_api_services.dart';
import 'package:football_app/features/competitions/data/models/league_details/league_details_response_model.dart';
import 'package:football_app/features/competitions/data/models/league_matches/matches_response_model.dart';
import 'package:football_app/features/competitions/data/models/league_standing/league_standing_model.dart';
import 'package:football_app/features/competitions/data/models/popular_leagues_response_model.dart';
import 'package:football_app/features/competitions/domain/entities/popular_leagues_response_entity.dart';
import 'package:football_app/features/competitions/domain/repos/competitions_repo.dart';

class CompetitionsRepoImpl implements CompetitionsRepo {
  final CompetitionsApiService _apiService;
  CompetitionsRepoImpl(this._apiService);
  @override
  Future<DataState<PopularLeaguesResponseEntity>> getPopularLeagues() async {
    try {
      final response = await _apiService.getPopularLeagues();
      if (response.response.statusCode == 200) {
        final data = response.data;
        final model = PopularLeaguesResponseModel.fromJson(data);
        return DataSuccess(data: model.toEntity());
      } else {
        return DataFailed(
          error: DioException(
            message: response.response.statusMessage,
            requestOptions: response.response.requestOptions,
            response: response.response,
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailed(error: e);
    }
  }

  @override
  Future<DataState<LeagueDetailsResponseModel>> geLeaguesDetailsById(
    int leagueId,
  ) async {
    try {
      final response = await _apiService.getLeagueDetailsById(leagueId);
      if (response.response.statusCode == 200) {
        final data = response.data;
        final model = LeagueDetailsResponseModel.fromJson(data);
        return DataSuccess(data: model);
      } else if (response.response.statusCode == 429) {
        return DataFailed(
          error: DioException(
            requestOptions: RequestOptions(
              data:
                  "You have exceeded the MONTHLY quota for Requests on your current plan",
            ),
            type: DioExceptionType.badResponse,
            message: 'Too many requests',
            response: response.response,
          ),
        );
      } else {
        return DataFailed(
          error: DioException(
            message: response.response.statusMessage,
            requestOptions: response.response.requestOptions,
            response: response.response,
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailed(error: e);
    }
  }

  @override
  Future<DataState<String>> getLeagueLogoById(int leagueId) async {
    try {
      final response = await _apiService.getLeagueLogoById(leagueId);
      if (response.response.statusCode == 200) {
        final String url = response.data['response']['url'];
        return DataSuccess(data: url);
      } else {
        return DataFailed(
          error: DioException(
            message: response.response.statusMessage,
            requestOptions: response.response.requestOptions,
            response: response.response,
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailed(error: e);
    }
  }

  @override
  Future<DataState<MatchesResponseModel>> getLeagueMatchesById(
    int leagueId,
  ) async {
    try {
      final response = await _apiService.getAllMachesByLeagueId(leagueId);
      if (response.response.statusCode == 200) {
        final data = response.data;
        final model = MatchesResponseModel.fromJson(data);
        return DataSuccess(data: model);
      } else {
        return DataFailed(
          error: DioException(
            message: response.response.statusMessage,
            requestOptions: response.response.requestOptions,
            response: response.response,
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailed(error: e);
    }
  }

  @override
  Future<DataState<LeagueStandingModel>> getLeagueStandingsById(
    int leagueId,
  ) async {
    try {
      final response = await _apiService.getLeagueStandingsById(leagueId);
      if (response.response.statusCode == 200) {
        final model = LeagueStandingModel.fromJson(response.data);
        return DataSuccess(data: model);
      } else if (response.response.statusCode == 429) {
        return DataFailed(
          error: DioException(
            requestOptions: RequestOptions(
              data:
                  "You have exceeded the MONTHLY quota for Requests on your current plan",
            ),
            error: response.response.statusCode,
            message:
                "You have exceeded the MONTHLY quota for Requests on your current plan",
            response: response.response,
            type: DioExceptionType.badResponse,
          ),
        );
      } else {
         return DataFailed(
          error: DioException(
            message: response.response.statusMessage,
            requestOptions: response.response.requestOptions,
            response: response.response,
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailed(error: e);
    }
  }
}
