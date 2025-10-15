// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element

part of 'matches_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchesResponseModel _$MatchesResponseModelFromJson(
  Map<String, dynamic> json,
) => MatchesResponseModel(
  matchesModel: (json['matches'] as List<dynamic>)
      .map((e) => MatchModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MatchesResponseModelToJson(
  MatchesResponseModel instance,
) => <String, dynamic>{
  'matches': instance.matchesModel.map((e) => e.toJson()).toList(),
};
