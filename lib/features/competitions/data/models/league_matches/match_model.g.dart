// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchModel _$MatchModelFromJson(Map<String, dynamic> json) => MatchModel(
  id: json['id'] as String,
  pageUrl: json['pageUrl'] as String,
  opponentModel: json['opponent'] == null
      ? null
      : TeamModel.fromJson(json['opponent'] as Map<String, dynamic>),
  homeModel: TeamModel.fromJson(json['home'] as Map<String, dynamic>),
  awayModel: TeamModel.fromJson(json['away'] as Map<String, dynamic>),
  displayTournamentField: json['displayTournament'] as bool? ?? false,
  notStartedField: json['notStarted'] as bool? ?? false,
  tournamentModel: json['tournament'] == null
      ? null
      : TournamentModel.fromJson(json['tournament'] as Map<String, dynamic>),
  statusModel: MatchStatusModel.fromJson(
    json['status'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$MatchModelToJson(MatchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pageUrl': instance.pageUrl,
      'opponent': instance.opponentModel?.toJson(),
      'home': instance.homeModel.toJson(),
      'away': instance.awayModel.toJson(),
      'displayTournament': instance.displayTournamentField,
      'notStarted': instance.notStartedField,
      'tournament': instance.tournamentModel?.toJson(),
      'status': instance.statusModel.toJson(),
    };
