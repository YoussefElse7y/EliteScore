class LeagueStandingEntity {
  final String? status;
  final LeagueStandingResponseEntity? response;

  LeagueStandingEntity({
    this.status,
    this.response,
  });
}

class LeagueStandingResponseEntity {
  final List<TeamStandingEntity>? standing;

  LeagueStandingResponseEntity({this.standing});
}

class TeamStandingEntity {
  final String? name;
  final String? shortName;
  final int? id;
  final String? pageUrl;
  final dynamic deduction;
  final dynamic ongoing;
  final int? played;
  final int? wins;
  final int? draws;
  final int? losses;
  final String? scoresStr;
  final int? goalConDiff;
  final int? pts;
  final int? idx;
  final String? qualColor;

  TeamStandingEntity({
    this.name,
    this.shortName,
    this.id,
    this.pageUrl,
    this.deduction,
    this.ongoing,
    this.played,
    this.wins,
    this.draws,
    this.losses,
    this.scoresStr,
    this.goalConDiff,
    this.pts,
    this.idx,
    this.qualColor,
  });
}
