import 'package:floor/floor.dart';
import 'package:football_app/features/competitions/domain/entities/popular_league_entity.dart';

@dao
abstract class PopularLeagueDao {
  
  @Query('SELECT * FROM popular_league')
  Future<List<PopularLeagueEntity>> getAllPopularLeagues();

  @Insert()
  Future<void> insertPopularLeagues(List<PopularLeagueEntity> leagues);

  @delete
  Future<void> clearPopularLeagues();
}