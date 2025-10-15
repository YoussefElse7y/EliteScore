import 'package:equatable/equatable.dart';

class PopularLeagueEntity extends Equatable {
  final int id;
  final String name;
  final String localizedName;
  final String logo;

  const PopularLeagueEntity({
    required this.id,
    required this.name,
    required this.localizedName,
    required this.logo,
  });

  @override
  List<Object?> get props => [id, name, localizedName, logo];
}
