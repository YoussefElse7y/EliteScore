// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_reason_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusReasonModel _$StatusReasonModelFromJson(Map<String, dynamic> json) =>
    StatusReasonModel(
      short: json['short'] as String? ?? '',
      shortKey: json['shortKey'] as String? ?? '',
      long: json['long'] as String? ?? '',
      longKey: json['longKey'] as String? ?? '',
    );

Map<String, dynamic> _$StatusReasonModelToJson(StatusReasonModel instance) =>
    <String, dynamic>{
      'short': instance.short,
      'shortKey': instance.shortKey,
      'long': instance.long,
      'longKey': instance.longKey,
    };
