import 'package:football_app/core/resources/data_state.dart';
import 'package:football_app/core/usecase/usecase.dart';
import 'package:football_app/features/competitions/domain/entities/league_details/league_details_response_entity.dart';
import 'package:football_app/features/competitions/domain/repos/competitions_repo.dart';

class GetLeagueDetailsByIdUseCase
    extends UseCase<DataState<LeagueDetailsResponseEntity>, int> {
  final CompetitionsRepo _CompetitionsRepo;

  GetLeagueDetailsByIdUseCase(this._CompetitionsRepo);
  @override
  Future<DataState<LeagueDetailsResponseEntity>> call(int leagueId) {
    return _CompetitionsRepo.geLeaguesDetailsById(leagueId);
  }

  Future<DataState<String>> getLogo(int leagueId) async {
    return await _CompetitionsRepo.getLeagueLogoById(leagueId);
  }
}
