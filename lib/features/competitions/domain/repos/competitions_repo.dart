import 'package:football_app/core/resources/data_state.dart';
import 'package:football_app/features/competitions/domain/entities/league_details/league_details_response_entity.dart';
import 'package:football_app/features/competitions/domain/entities/league_matches/matches_response_entity.dart';
import 'package:football_app/features/competitions/domain/entities/league_standing/league_standing_entity.dart';
import 'package:football_app/features/competitions/domain/entities/popular_leagues_response_entity.dart';

abstract class CompetitionsRepo {
  Future<DataState<PopularLeaguesResponseEntity>> getPopularLeagues();
  Future<DataState<LeagueDetailsResponseEntity>> geLeaguesDetailsById(
    int leagueId,
  );
  Future<DataState<String>> getLeagueLogoById(int leagueId);
  Future<DataState<MatchesResponseEntity>> getLeagueMatchesById(
    int leagueId,
  );
  Future<DataState<LeagueStandingEntity>> getLeagueStandingsById(
    int leagueId,
  );
}
