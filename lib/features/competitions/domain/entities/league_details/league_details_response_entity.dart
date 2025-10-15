import 'package:equatable/equatable.dart';
import 'league_response_entity.dart';

class LeagueDetailsResponseEntity extends Equatable {
  final String status;
  final LeagueResponseEntity response;

  const LeagueDetailsResponseEntity({
    required this.status,
    required this.response,
  });

  @override
  List<Object?> get props => [status, response];
}
