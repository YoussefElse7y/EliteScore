// ignore_for_file: overridden_fields

import 'package:json_annotation/json_annotation.dart';
import 'package:football_app/features/competitions/domain/entities/league_details/breadcrumb_item_entity.dart';

part 'breadcrumb_item_model.g.dart';

@JsonSerializable()
class BreadcrumbItemModel extends BreadcrumbItemEntity {
  @override
  @JsonKey(name: '@type')
  final String type;
  @override
  final int position;
  @override
  final String name;
  @override
  final String item;
  const BreadcrumbItemModel({
    required this.type,
    required this.position,
    required this.name,
    required this.item,
  }) : super(type: type, position: position, name: name, item: item);

  factory BreadcrumbItemModel.fromJson(Map<String, dynamic> json) =>
      _$BreadcrumbItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$BreadcrumbItemModelToJson(this);
}
