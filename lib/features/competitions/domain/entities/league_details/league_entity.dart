import 'package:equatable/equatable.dart';
import 'breadcrumb_jsonld_entity.dart';

class LeagueEntity extends Equatable {
  final int id;
  final String type;
  final String name;
  final String selectedSeason;
  final String latestSeason;
  final String shortName;
  final String country;
  final String? faqJSONLD;
  final BreadcrumbJSONLDEntity breadcrumbJSONLD;
  final String leagueColor;
  final String dataProvider;

  const LeagueEntity({
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
  });

  @override
  List<Object?> get props => [
        id,
        type,
        name,
        selectedSeason,
        latestSeason,
        shortName,
        country,
        faqJSONLD,
        breadcrumbJSONLD,
        leagueColor,
        dataProvider,
      ];
}
