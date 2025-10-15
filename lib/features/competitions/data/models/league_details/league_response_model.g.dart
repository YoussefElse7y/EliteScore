// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueResponseModel _$LeagueResponseModelFromJson(Map<String, dynamic> json) =>
    LeagueResponseModel(
      leagues: LeagueModel.fromJson(json['leagues'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LeagueResponseModelToJson(
  LeagueResponseModel instance,
) => <String, dynamic>{'leagues': instance.leagues.toJson()};
