// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_leagues_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularLeaguesResponseModel _$PopularLeaguesResponseModelFromJson(
  Map<String, dynamic> json,
) => PopularLeaguesResponseModel(
  status: json['status'] as String,
  response: ResponseDataModel.fromJson(
    json['response'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$PopularLeaguesResponseModelToJson(
  PopularLeaguesResponseModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'response': instance.response,
};

ResponseDataModel _$ResponseDataModelFromJson(Map<String, dynamic> json) =>
    ResponseDataModel(
      popular: (json['popular'] as List<dynamic>)
          .map((e) => PopularLeagueModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseDataModelToJson(ResponseDataModel instance) =>
    <String, dynamic>{'popular': instance.popular};
