import 'package:equatable/equatable.dart';
import 'breadcrumb_item_entity.dart';

class BreadcrumbJSONLDEntity extends Equatable {
  final String context;
  final String type;
  final List<BreadcrumbItemEntity> itemListElement;

  const BreadcrumbJSONLDEntity({
    required this.context,
    required this.type,
    required this.itemListElement,
  });

  @override
  List<Object?> get props => [context, type, itemListElement];
}
