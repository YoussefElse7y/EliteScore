// ignore_for_file: overridden_fields

import 'package:json_annotation/json_annotation.dart';
import 'package:football_app/features/competitions/domain/entities/league_details/league_details_response_entity.dart';
import 'league_response_model.dart';

part 'league_details_response_model.g.dart';

@JsonSerializable(explicitToJson: true)
class LeagueDetailsResponseModel extends LeagueDetailsResponseEntity {
  @override
  final String status;
  @override
  final LeagueResponseModel response;

  const LeagueDetailsResponseModel({
    required this.status,
    required this.response,
  }) : super(status: status, response: response);

  factory LeagueDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LeagueDetailsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LeagueDetailsResponseModelToJson(this);
}
