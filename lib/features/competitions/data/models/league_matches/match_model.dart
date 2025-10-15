import 'package:json_annotation/json_annotation.dart';
import 'package:football_app/features/competitions/domain/entities/league_matches/match_entity.dart';
import 'team_model.dart';
import 'tournament_model.dart';
import 'match_status_model.dart';

part 'match_model.g.dart';

@JsonSerializable(explicitToJson: true)
class MatchModel extends MatchEntity {
  @JsonKey(name: 'opponent')
  final TeamModel? opponentModel;
  
  @JsonKey(name: 'home')
  final TeamModel homeModel;
  
  @JsonKey(name: 'away')
  final TeamModel awayModel;
  
  @JsonKey(name: 'displayTournament', defaultValue: false)
  final bool displayTournamentField;
  
  @JsonKey(name: 'notStarted', defaultValue: false)
  final bool notStartedField;
  
  @JsonKey(name: 'tournament')
  final TournamentModel? tournamentModel;
  
  @JsonKey(name: 'status')
  final MatchStatusModel statusModel;

  const MatchModel({
    required String id,
    required String pageUrl,
    this.opponentModel,
    required this.homeModel,
    required this.awayModel,
    this.displayTournamentField = false,
    this.notStartedField = false,
    this.tournamentModel,
    required this.statusModel,
  }) : super(
          id: id,
          pageUrl: pageUrl,
          opponent: opponentModel,
          home: homeModel,
          away: awayModel,
          displayTournament: displayTournamentField,
          notStarted: notStartedField,
          tournament: tournamentModel,
          status: statusModel,
        );

  factory MatchModel.fromJson(Map<String, dynamic> json) => _$MatchModelFromJson(json);

  Map<String, dynamic> toJson() => _$MatchModelToJson(this);
}