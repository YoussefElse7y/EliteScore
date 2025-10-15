// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breadcrumb_jsonld_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BreadcrumbJSONLDModel _$BreadcrumbJSONLDModelFromJson(
  Map<String, dynamic> json,
) => BreadcrumbJSONLDModel(
  context: json['@context'] as String,
  type: json['@type'] as String,
  itemListElement: (json['itemListElement'] as List<dynamic>)
      .map((e) => BreadcrumbItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BreadcrumbJSONLDModelToJson(
  BreadcrumbJSONLDModel instance,
) => <String, dynamic>{
  '@context': instance.context,
  '@type': instance.type,
  'itemListElement': instance.itemListElement.map((e) => e.toJson()).toList(),
};
