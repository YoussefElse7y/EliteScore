import 'package:football_app/core/resources/data_state.dart';
import 'package:football_app/core/usecase/usecase.dart';
import 'package:football_app/features/competitions/domain/entities/league_standing/league_standing_entity.dart';
import 'package:football_app/features/competitions/domain/repos/competitions_repo.dart';

class GetLeagueStandingByIdUseCase
    extends UseCase<DataState<LeagueStandingEntity>, int> {
  final CompetitionsRepo _competitionsRepo;
  GetLeagueStandingByIdUseCase(this._competitionsRepo);
  @override
  Future<DataState<LeagueStandingEntity>> call(int leagueId) {
    return _competitionsRepo.getLeagueStandingsById(leagueId);
  }
}
