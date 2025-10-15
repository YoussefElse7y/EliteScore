import 'package:json_annotation/json_annotation.dart';
import 'package:football_app/features/competitions/domain/entities/league_matches/match_status_entity.dart';
import 'status_reason_model.dart';

part 'match_status_model.g.dart';

@JsonSerializable(explicitToJson: true)
class MatchStatusModel extends MatchStatusEntity {
  @JsonKey(name: 'reason')
  final StatusReasonModel? reasonModel;

    @JsonKey(name: 'utcTime', defaultValue: '')
  final String? utcTimeField;
  
  @JsonKey(name: 'finished', defaultValue: false)
  final bool? finishedField;
  
  @JsonKey(name: 'started', defaultValue: false)
  final bool? startedField;
  
  @JsonKey(name: 'cancelled', defaultValue: false)
  final bool? cancelledField;
  
  @JsonKey(name: 'awarded', defaultValue: false)
  final bool? awardedField;
  
  @JsonKey(name: 'scoreStr', defaultValue: '')
  final  String? scoreStrField;
  const MatchStatusModel({
    this.utcTimeField = '',
    this.finishedField = false,
    this.startedField = false,
    this.cancelledField = false,
    this.awardedField = false,
    this.scoreStrField = '',
    required this.reasonModel,
  }) : super(
          utcTime: utcTimeField,
          finished: finishedField,
          started: startedField,
          cancelled: cancelledField,
          awarded: awardedField,
          scoreStr: scoreStrField,
          reason: reasonModel,
        );

  factory MatchStatusModel.fromJson(Map<String, dynamic> json) => _$MatchStatusModelFromJson(json);

  Map<String, dynamic> toJson() => _$MatchStatusModelToJson(this);
}