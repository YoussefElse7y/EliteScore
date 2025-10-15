// ignore_for_file: overridden_fields

import 'package:json_annotation/json_annotation.dart';
import 'package:football_app/features/competitions/domain/entities/league_details/league_response_entity.dart';
import 'league_model.dart';

part 'league_response_model.g.dart';

@JsonSerializable(explicitToJson: true)
class LeagueResponseModel extends LeagueResponseEntity {
  @override
  final LeagueModel leagues;

  const LeagueResponseModel({required this.leagues}) : super(leagues: leagues);

  factory LeagueResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LeagueResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LeagueResponseModelToJson(this);
}
