import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  
  const Failure(this.message);
  
  @override
  List<Object> get props => [message];
}

class ServerFailure extends Failure {
  const ServerFailure(super.message);
}

class NetworkFailure extends Failure {
  final DateTime? lastUpdated;
  
  const NetworkFailure({
    String message = 'No internet connection',
    this.lastUpdated,
  }) : super(message);
  
  @override
  List<Object> get props => [message, lastUpdated ?? ''];
}

class CacheFailure extends Failure {
  const CacheFailure(super.message);
}