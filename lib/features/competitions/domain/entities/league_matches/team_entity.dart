import 'package:equatable/equatable.dart';

class TeamEntity extends Equatable {
  final String? id;
  final String? name;
  final int? score;

  const TeamEntity({
     this.id,
     this.name,
     this.score,
  });

  @override
  List<Object?> get props => [id, name, score];
}