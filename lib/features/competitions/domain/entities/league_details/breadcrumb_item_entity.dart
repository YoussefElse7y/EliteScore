import 'package:equatable/equatable.dart';

class BreadcrumbItemEntity extends Equatable {
  final String type;
  final int position;
  final String name;
  final String item;

  const BreadcrumbItemEntity({
    required this.type,
    required this.position,
    required this.name,
    required this.item,
  });

  @override
  List<Object?> get props => [type, position, name, item];
}
