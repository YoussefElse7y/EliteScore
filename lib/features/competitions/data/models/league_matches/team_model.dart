import 'package:json_annotation/json_annotation.dart';
import 'package:football_app/features/competitions/domain/entities/league_matches/team_entity.dart';

part 'team_model.g.dart';

@JsonSerializable()
class TeamModel extends TeamEntity {
  const TeamModel({
     String id = '',
     String name = '',
     int score = 0,
    String? logo,
  }) : super(
          id: id,
          name: name,
          score: score,
        );

  factory TeamModel.fromJson(Map<String, dynamic> json) => _$TeamModelFromJson(json);

  Map<String, dynamic> toJson() => _$TeamModelToJson(this);
}