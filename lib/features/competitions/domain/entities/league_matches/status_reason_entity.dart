import 'package:equatable/equatable.dart';

class StatusReasonEntity extends Equatable {
  final String? short;
  final String? shortKey;
  final String? long;
  final String? longKey;

  const StatusReasonEntity({
     this.short,
     this.shortKey,
     this.long,
     this.longKey,
  });

  @override
  List<Object?> get props => [short, shortKey, long, longKey];
}