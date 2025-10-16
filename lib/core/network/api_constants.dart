import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstants {
  static const String baseUrl =
      "https://free-api-live-football-data.p.rapidapi.com/";
  static final String apiKey = dotenv.env['API_KEY']!;
  static const String apiHost = 'free-api-live-football-data.p.rapidapi.com';
  static const String popularLeaguesEndpoint = 'football-popular-leagues';
  static const String getLeagueDetails = 'football-get-league-detail';
  static const String getLeagueLogo = 'football-get-league-logo';
  static const String getLeagueFixtures = 'football-get-all-matches-by-league';
  static const String getLeagueStandings = 'football-get-standing-all';
  static const String getLeagueMatches = 'football-get-league-matches';
  static const String getLeagueTeams = 'football-get-league-teams';
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
