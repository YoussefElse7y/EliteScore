// ignore_for_file: overridden_fields

import 'package:json_annotation/json_annotation.dart';
import 'package:football_app/features/competitions/domain/entities/league_details/league_entity.dart';
import 'breadcrumb_jsonld_model.dart';

part 'league_model.g.dart';

@JsonSerializable(explicitToJson: true)
class LeagueModel extends LeagueEntity {
  @override
  final int id;
  @override
  final String type;
  @override
  final String name;
  @override
  final String selectedSeason;
  @override
  final String latestSeason;
  @override
  final String shortName;
  @override
  final String country;
  @override
  final String? faqJSONLD;
  @override
  final BreadcrumbJSONLDModel breadcrumbJSONLD;
  @override
  final String leagueColor;
  @override
  final String dataProvider;

  const LeagueModel({
    required this.id,
    required this.type,
    required this.name,
    required this.selectedSeason,
    required this.latestSeason,
    required this.shortName,
    required this.country,
    required this.faqJSONLD,
    required this.breadcrumbJSONLD,
    required this.leagueColor,
    required this.dataProvider,
  }) : super(
          id: id,
          type: type,
          name: name,
          selectedSeason: selectedSeason,
          latestSeason: latestSeason,
          shortName: shortName,
          country: country,
          faqJSONLD: faqJSONLD,
          breadcrumbJSONLD: breadcrumbJSONLD,
          leagueColor: leagueColor,
          dataProvider: dataProvider,
        );

  factory LeagueModel.fromJson(Map<String, dynamic> json) =>
      _$LeagueModelFromJson(json);

  Map<String, dynamic> toJson() => _$LeagueModelToJson(this);
}
