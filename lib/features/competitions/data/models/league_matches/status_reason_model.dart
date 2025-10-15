import 'package:json_annotation/json_annotation.dart';
import 'package:football_app/features/competitions/domain/entities/league_matches/status_reason_entity.dart';

part 'status_reason_model.g.dart';

@JsonSerializable()
class StatusReasonModel extends StatusReasonEntity {
  @JsonKey(name: 'short' , defaultValue: '')
  final String short;
  @JsonKey(name: 'shortKey', defaultValue: '')
  final String shortKey;
  @JsonKey(name: 'long',  defaultValue: '')
  final String long;
  @JsonKey(name: 'longKey',   defaultValue: '')
  final String longKey;
  const StatusReasonModel({
    required this.short,
    required this.shortKey,
    required this.long,
    required this.longKey,
  }) : super(
          short: short,
          shortKey: shortKey,
          long: long,
          longKey: longKey,
        );

  factory StatusReasonModel.fromJson(Map<String, dynamic> json) => _$StatusReasonModelFromJson(json);

  Map<String, dynamic> toJson() => _$StatusReasonModelToJson(this);
}