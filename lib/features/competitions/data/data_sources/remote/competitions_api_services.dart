import 'package:dio/dio.dart';
import 'package:football_app/core/network/api_constants.dart';
import 'package:retrofit/retrofit.dart';

part 'competitions_api_services.g.dart';

@RestApi()
abstract class CompetitionsApiService {
  factory CompetitionsApiService(Dio dio, {String baseUrl}) =
      _CompetitionsApiService;

  @GET(ApiConstants.popularLeaguesEndpoint)
  Future<HttpResponse<dynamic>> getPopularLeagues();

  @GET(ApiConstants.getLeagueDetails)
  Future<HttpResponse<dynamic>> getLeagueDetailsById(
    @Query("leagueid") int leagueId,
  );

  @GET(ApiConstants.getLeagueLogo)
  Future<HttpResponse<dynamic>> getLeagueLogoById(
    @Query("leagueid") int leagueId,
  );

  @GET(ApiConstants.getLeagueFixtures)
  Future<HttpResponse<dynamic>> getAllMachesByLeagueIdUseCase(
    @Query("leagueid") int leagueId,
  );
}
