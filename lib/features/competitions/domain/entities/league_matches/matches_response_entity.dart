import 'package:equatable/equatable.dart';
import 'match_entity.dart';

class MatchesResponseEntity extends Equatable {
  final List<MatchEntity>? matches;

  const MatchesResponseEntity({
     this.matches,
  });

  @override
  List<Object?> get props => [matches];
}