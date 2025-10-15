// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_league_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularLeagueModel _$PopularLeagueModelFromJson(Map<String, dynamic> json) =>
    PopularLeagueModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      localizedName: json['localizedName'] as String,
      logo: json['logo'] as String,
    );

Map<String, dynamic> _$PopularLeagueModelToJson(PopularLeagueModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'localizedName': instance.localizedName,
      'logo': instance.logo,
    };
