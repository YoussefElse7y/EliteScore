import 'package:json_annotation/json_annotation.dart';
import 'package:football_app/features/competitions/domain/entities/league_matches/matches_response_entity.dart';
import 'match_model.dart';

part 'matches_response_model.g.dart';

@JsonSerializable(explicitToJson: true)
class MatchesResponseModel extends MatchesResponseEntity {
  @JsonKey(name: 'matches')
  final List<MatchModel> matchesModel;

  const MatchesResponseModel({
    required this.matchesModel,
  }) : super(matches: matchesModel);

  factory MatchesResponseModel.fromJson(Map<String, dynamic> json) {
    // Handle the nested structure: json -> response -> matches
    final responseData = json['response'];
    
    if (responseData == null) {
      return const MatchesResponseModel(matchesModel: []);
    }

    final matchesList = responseData['matches'];
    
    if (matchesList == null) {
      return const MatchesResponseModel(matchesModel: []);
    }

    return MatchesResponseModel(
      matchesModel: (matchesList as List)
          .map((match) => MatchModel.fromJson(match as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => _$MatchesResponseModelToJson(this);
}