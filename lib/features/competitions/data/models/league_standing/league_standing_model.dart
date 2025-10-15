// league_standing_model.dart

import 'package:football_app/features/competitions/domain/entities/league_standing/league_standing_entity.dart';

class LeagueStandingModel extends LeagueStandingEntity {
  LeagueStandingModel({
    super.status,
    super.response,
  });

  factory LeagueStandingModel.fromJson(Map<String, dynamic> json) {
    return LeagueStandingModel(
      status: json['status'] as String?,
      response: json['response'] != null
          ? LeagueStandingResponseModel.fromJson(json['response'])
          : null,
    );
  }

  Map<String, dynamic> toJson() => {
        'status': status,
        'response': (response as LeagueStandingResponseModel?)?.toJson(),
      };
}

class LeagueStandingResponseModel extends LeagueStandingResponseEntity {
  LeagueStandingResponseModel({
    super.standing,
  });

  factory LeagueStandingResponseModel.fromJson(Map<String, dynamic> json) {
    return LeagueStandingResponseModel(
      standing: (json['standing'] as List?)
          ?.map((e) => TeamStandingModel.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'standing':
            standing?.map((e) => (e as TeamStandingModel).toJson()).toList(),
      };
}

class TeamStandingModel extends TeamStandingEntity {
  TeamStandingModel({
    super.name,
    super.shortName,
    super.id,
    super.pageUrl,
    super.deduction,
    super.ongoing,
    super.played,
    super.wins,
    super.draws,
    super.losses,
    super.scoresStr,
    super.goalConDiff,
    super.pts,
    super.idx,
    super.qualColor,
  });

  factory TeamStandingModel.fromJson(Map<String, dynamic> json) {
    return TeamStandingModel(
      name: json['name'] as String?,
      shortName: json['shortName'] as String?,
      id: json['id'] as int?,
      pageUrl: json['pageUrl'] as String?,
      deduction: json['deduction'],
      ongoing: json['ongoing'],
      played: json['played'] as int?,
      wins: json['wins'] as int?,
      draws: json['draws'] as int?,
      losses: json['losses'] as int?,
      scoresStr: json['scoresStr'] as String?,
      goalConDiff: json['goalConDiff'] as int?,
      pts: json['pts'] as int?,
      idx: json['idx'] as int?,
      qualColor: json['qualColor'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'shortName': shortName,
        'id': id,
        'pageUrl': pageUrl,
        'deduction': deduction,
        'ongoing': ongoing,
        'played': played,
        'wins': wins,
        'draws': draws,
        'losses': losses,
        'scoresStr': scoresStr,
        'goalConDiff': goalConDiff,
        'pts': pts,
        'idx': idx,
        'qualColor': qualColor,
      };
}
