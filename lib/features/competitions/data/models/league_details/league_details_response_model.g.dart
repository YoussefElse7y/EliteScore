// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueDetailsResponseModel _$LeagueDetailsResponseModelFromJson(
  Map<String, dynamic> json,
) => LeagueDetailsResponseModel(
  status: json['status'] as String,
  response: LeagueResponseModel.fromJson(
    json['response'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$LeagueDetailsResponseModelToJson(
  LeagueDetailsResponseModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'response': instance.response.toJson(),
};
