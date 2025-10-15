// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueModel _$LeagueModelFromJson(Map<String, dynamic> json) => LeagueModel(
  id: (json['id'] as num).toInt(),
  type: json['type'] as String,
  name: json['name'] as String,
  selectedSeason: json['selectedSeason'] as String,
  latestSeason: json['latestSeason'] as String,
  shortName: json['shortName'] as String,
  country: json['country'] as String,
  faqJSONLD: json['faqJSONLD'] as String?,
  breadcrumbJSONLD: BreadcrumbJSONLDModel.fromJson(
    json['breadcrumbJSONLD'] as Map<String, dynamic>,
  ),
  leagueColor: json['leagueColor'] as String,
  dataProvider: json['dataProvider'] as String,
);

Map<String, dynamic> _$LeagueModelToJson(LeagueModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'selectedSeason': instance.selectedSeason,
      'latestSeason': instance.latestSeason,
      'shortName': instance.shortName,
      'country': instance.country,
      'faqJSONLD': instance.faqJSONLD,
      'breadcrumbJSONLD': instance.breadcrumbJSONLD.toJson(),
      'leagueColor': instance.leagueColor,
      'dataProvider': instance.dataProvider,
    };
