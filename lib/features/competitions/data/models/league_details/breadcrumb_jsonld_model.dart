// ignore_for_file: overridden_fields

import 'package:json_annotation/json_annotation.dart';
import 'package:football_app/features/competitions/domain/entities/league_details/breadcrumb_jsonld_entity.dart';
import 'breadcrumb_item_model.dart';

part 'breadcrumb_jsonld_model.g.dart';

@JsonSerializable(explicitToJson: true)
class BreadcrumbJSONLDModel extends BreadcrumbJSONLDEntity {
  @JsonKey(name: '@context')
  @override
  final String context;
  @JsonKey(name: '@type')
  @override
  final String type;

  @override
  final List<BreadcrumbItemModel> itemListElement;

  const BreadcrumbJSONLDModel({
    required this.context,
    required this.type,
    required this.itemListElement,
  }) : super(context: context, type: type, itemListElement: itemListElement);

  factory BreadcrumbJSONLDModel.fromJson(Map<String, dynamic> json) =>
      _$BreadcrumbJSONLDModelFromJson(json);

  Map<String, dynamic> toJson() => _$BreadcrumbJSONLDModelToJson(this);
}
