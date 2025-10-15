import 'package:equatable/equatable.dart';
import 'package:football_app/features/competitions/domain/entities/league_matches/status_reason_entity.dart';

class MatchStatusEntity extends Equatable {
  final String? utcTime;
  final bool? finished;
  final bool? started;
  final bool? cancelled;
  final bool? awarded;
  final String? scoreStr;
  final StatusReasonEntity? reason;

  const MatchStatusEntity({
     this.utcTime,
     this.finished,
     this.started,
     this.cancelled,
     this.awarded,
     this.scoreStr,
     this.reason,
  });

  @override
  List<Object?> get props => [
        utcTime,
        finished,
        started,
        cancelled,
        awarded,
        scoreStr,
        reason,
      ];
}