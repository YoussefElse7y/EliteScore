import 'package:football_app/core/resources/data_state.dart';
import 'package:football_app/core/usecase/usecase.dart';
import 'package:football_app/features/competitions/domain/entities/league_matches/matches_response_entity.dart';
import 'package:football_app/features/competitions/domain/repos/competitions_repo.dart';

class GetAllMachesByLeagueIdUseCase
    extends UseCase<DataState<MatchesResponseEntity>, int> {
  final CompetitionsRepo _CompetitionsRepo;

  GetAllMachesByLeagueIdUseCase(this._CompetitionsRepo);

  @override
  Future<DataState<MatchesResponseEntity>> call(int leagueId) {
    return _CompetitionsRepo.getLeagueMatchesById(leagueId);
  }
}
