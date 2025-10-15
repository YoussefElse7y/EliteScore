import 'package:json_annotation/json_annotation.dart';
import 'package:football_app/features/competitions/domain/entities/league_matches/tournament_entity.dart';

part 'tournament_model.g.dart';

@JsonSerializable()
class TournamentModel extends TournamentEntity {
  const TournamentModel({
    String? name,
    String? round,
    String? date,
  }) : super(
          name: name,
          round: round,
          date: date,
        );

  factory TournamentModel.fromJson(Map<String, dynamic> json) => _$TournamentModelFromJson(json);

  Map<String, dynamic> toJson() => _$TournamentModelToJson(this);
}