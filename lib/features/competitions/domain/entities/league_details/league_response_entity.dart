import 'package:equatable/equatable.dart';
import 'league_entity.dart';

class LeagueResponseEntity extends Equatable {
  final LeagueEntity leagues;

  const LeagueResponseEntity({
    required this.leagues,
  });

  @override
  List<Object?> get props => [leagues];
}
