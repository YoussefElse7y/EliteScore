// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tournament_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TournamentModel _$TournamentModelFromJson(Map<String, dynamic> json) =>
    TournamentModel(
      name: json['name'] as String?,
      round: json['round'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$TournamentModelToJson(TournamentModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'round': instance.round,
      'date': instance.date,
    };
