import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:football_app/core/helpers/shared_prefs_helper.dart';
import 'package:football_app/core/network/network_info.dart';
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
    final NetworkInfo _networkInfo; // ✅ Add NetworkInfo

  CompetitionsRepoImpl(this._apiService, this._networkInfo);

    // Cache keys
  static const String _popularLeaguesKey = 'popular_leagues_cache';

  @override
   @override
  Future<DataState<PopularLeaguesResponseEntity>> getPopularLeagues() async {
    // ✅ Step 1: Check internet connection
    if (!await _networkInfo.isConnected) {
      // Try to get cached data
      final cachedData = SharedPrefsHelper.getJsonData(_popularLeaguesKey);
      final lastUpdated = SharedPrefsHelper.getLastFetchTime(_popularLeaguesKey);

      if (cachedData != null) {
        try {
          final model = PopularLeaguesResponseModel.fromJson(
            jsonDecode(cachedData),
          );
          // Return cached data with offline indicator
          return DataSuccess(data: model.toEntity());
        } catch (e) {
          return DataFailed(
            error: DioException(
              requestOptions: RequestOptions(path: ''),
              type: DioExceptionType.connectionError,
              message: 'No internet connection. Last updated: ${_formatLastUpdated(lastUpdated)}',
            ),
          );
        }
      }

      // No cached data available
      return DataFailed(
        error: DioException(
          requestOptions: RequestOptions(path: ''),
          type: DioExceptionType.connectionError,
          message: 'No internet connection and no cached data available',
        ),
      );
    }

    // ✅ Step 2: Has internet - fetch from API
    try {
      final response = await _apiService.getPopularLeagues();
      
      if (response.response.statusCode == 200) {
        final data = response.data;
        final model = PopularLeaguesResponseModel.fromJson(data);

        // ✅ Step 3: Cache the data
        await SharedPrefsHelper.saveJsonData(
          _popularLeaguesKey,
          jsonEncode(data),
        );

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
      // If API fails, try cache as fallback
      final cachedData = SharedPrefsHelper.getJsonData(_popularLeaguesKey);
      if (cachedData != null) {
        try {
          final model = PopularLeaguesResponseModel.fromJson(
            jsonDecode(cachedData),
          );
          return DataSuccess(data: model.toEntity());
        } catch (_) {
          return DataFailed(error: e);
        }
      }
      return DataFailed(error: e);
    }
  }

  // ✅ Helper method to format last updated time
  String _formatLastUpdated(DateTime? lastUpdated) {
    if (lastUpdated == null) return 'Unknown';

    final now = DateTime.now();
    final difference = now.difference(lastUpdated);

    if (difference.inMinutes < 1) {
      return 'Just now';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} hours ago';
    } else {
      return '${difference.inDays} days ago';
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
