import 'package:football_app/features/competitions/domain/entities/popular_league_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'popular_league_model.g.dart';

@JsonSerializable()
class PopularLeagueModel {
  final int id;
  final String name;
  final String localizedName;
  final String logo;

  const PopularLeagueModel({
    required this.id,
    required this.name,
    required this.localizedName,
    required this.logo,
  });

  factory PopularLeagueModel.fromJson(Map<String, dynamic> json) =>
      _$PopularLeagueModelFromJson(json);
  Map<String, dynamic> toJson() => _$PopularLeagueModelToJson(this);
  PopularLeagueEntity toEntity() {
    return PopularLeagueEntity(
      id: id,
      name: name,
      localizedName: localizedName,
      logo: logo,
    );
  }

  /// ✅ Helper for converting Entity → Model (if needed for caching or local storage)
  factory PopularLeagueModel.fromEntity(PopularLeagueEntity entity) {
    return PopularLeagueModel(
      id: entity.id,
      name: entity.name,
      localizedName: entity.localizedName,
      logo: entity.logo,
    );
  }
}
