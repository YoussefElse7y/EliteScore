import 'package:equatable/equatable.dart';
import 'package:football_app/features/competitions/domain/entities/league_matches/match_status_entity.dart';
import 'package:football_app/features/competitions/domain/entities/league_matches/team_entity.dart';
import 'package:football_app/features/competitions/domain/entities/league_matches/tournament_entity.dart';

class MatchEntity extends Equatable {
  final String? id;
  final String? pageUrl;
  final TeamEntity? opponent;
  final TeamEntity? home;
  final TeamEntity? away;
  final bool? displayTournament;
  final bool? notStarted;
  final TournamentEntity? tournament;
  final MatchStatusEntity? status;

  const MatchEntity({
     this.id,
     this.pageUrl,
    this.opponent,
     this.home,
     this.away,
     this.displayTournament,
     this.notStarted,
    this.tournament,
     this.status,
  });

  @override
  List<Object?> get props => [
        id,
        pageUrl,
        opponent,
        home,
        away,
        displayTournament,
        notStarted,
        tournament,
        status,
      ];
}