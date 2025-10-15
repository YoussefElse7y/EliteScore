import 'package:equatable/equatable.dart';

class TournamentEntity extends Equatable {
  final String? name;
  final String? round;
  final String? date;

  const TournamentEntity({
    this.name,
    this.round,
    this.date,
  });

  @override
  List<Object?> get props => [name, round, date];
}