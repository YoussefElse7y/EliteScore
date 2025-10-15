// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchStatusModel _$MatchStatusModelFromJson(Map<String, dynamic> json) =>
    MatchStatusModel(
      utcTimeField: json['utcTime'] as String? ?? '',
      finishedField: json['finished'] as bool? ?? false,
      startedField: json['started'] as bool? ?? false,
      cancelledField: json['cancelled'] as bool? ?? false,
      awardedField: json['awarded'] as bool? ?? false,
      scoreStrField: json['scoreStr'] as String? ?? '',
      reasonModel: json['reason'] == null
          ? null
          : StatusReasonModel.fromJson(json['reason'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MatchStatusModelToJson(MatchStatusModel instance) =>
    <String, dynamic>{
      'reason': instance.reasonModel?.toJson(),
      'utcTime': instance.utcTimeField,
      'finished': instance.finishedField,
      'started': instance.startedField,
      'cancelled': instance.cancelledField,
      'awarded': instance.awardedField,
      'scoreStr': instance.scoreStrField,
    };
