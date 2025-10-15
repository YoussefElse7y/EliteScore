// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breadcrumb_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BreadcrumbItemModel _$BreadcrumbItemModelFromJson(Map<String, dynamic> json) =>
    BreadcrumbItemModel(
      type: json['@type'] as String,
      position: (json['position'] as num).toInt(),
      name: json['name'] as String,
      item: json['item'] as String,
    );

Map<String, dynamic> _$BreadcrumbItemModelToJson(
  BreadcrumbItemModel instance,
) => <String, dynamic>{
  '@type': instance.type,
  'position': instance.position,
  'name': instance.name,
  'item': instance.item,
};
