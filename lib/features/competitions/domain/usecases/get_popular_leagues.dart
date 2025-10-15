// ignore_for_file: non_constant_identifier_names

import 'package:football_app/core/resources/data_state.dart';
import 'package:football_app/core/usecase/usecase.dart';
import 'package:football_app/features/competitions/domain/entities/popular_leagues_response_entity.dart';
import 'package:football_app/features/competitions/domain/repos/competitions_repo.dart';

class GetPopularLeaguesUseCase
    implements UseCase<DataState<PopularLeaguesResponseEntity>, void> {
  final CompetitionsRepo _CompetitionsRepo;

  GetPopularLeaguesUseCase(this._CompetitionsRepo);

  @override
  Future<DataState<PopularLeaguesResponseEntity>> call(void params) {
    return _CompetitionsRepo.getPopularLeagues();
  }
}
