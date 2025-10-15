import 'package:football_app/features/competitions/domain/entities/popular_leagues_response_entity.dart';
import 'package:json_annotation/json_annotation.dart';

import 'popular_league_model.dart';

part 'popular_leagues_response_model.g.dart';

@JsonSerializable()
class PopularLeaguesResponseModel {
  final String status;
  final ResponseDataModel response;

  const PopularLeaguesResponseModel({
    required this.status,
    required this.response,
  });

  factory PopularLeaguesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PopularLeaguesResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$PopularLeaguesResponseModelToJson(this);

  /// Convert full response model to entity
  PopularLeaguesResponseEntity toEntity() {
    return PopularLeaguesResponseEntity(
      status: status,
      popularLeagues:
          response.popular.map((model) => model.toEntity()).toList(),
    );
  }
}

@JsonSerializable()
class ResponseDataModel {
  final List<PopularLeagueModel> popular;

  const ResponseDataModel({required this.popular});

  factory ResponseDataModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseDataModelToJson(this);
}
