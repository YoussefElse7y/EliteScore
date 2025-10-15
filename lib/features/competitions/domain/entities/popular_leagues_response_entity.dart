import 'package:equatable/equatable.dart';
import 'popular_league_entity.dart';

class PopularLeaguesResponseEntity extends Equatable {
  final String status;
  final List<PopularLeagueEntity> popularLeagues;

  const PopularLeaguesResponseEntity({
    required this.status,
    required this.popularLeagues,
  });

  @override
  List<Object?> get props => [status, popularLeagues];
}
