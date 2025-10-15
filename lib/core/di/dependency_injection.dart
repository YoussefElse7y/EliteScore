import 'package:dio/dio.dart';
import 'package:football_app/core/network/dio_factory.dart';
import 'package:football_app/features/competitions/data/data_sources/remote/competitions_api_services.dart';
import 'package:football_app/features/competitions/data/repos/competitions_repo_impl.dart';
import 'package:football_app/features/competitions/domain/repos/competitions_repo.dart';
import 'package:football_app/features/competitions/domain/usecases/get_all_maches_by_league_id.dart';
import 'package:football_app/features/competitions/domain/usecases/get_league_details_by_id.dart';
import 'package:football_app/features/competitions/domain/usecases/get_league_standing_by_id.dart';
import 'package:football_app/features/competitions/domain/usecases/get_popular_leagues.dart';
import 'package:football_app/features/competitions/presentation/bloc/competitions/remote/bloc/remote_competitions_bloc.dart';
import 'package:football_app/features/competitions/presentation/bloc/fixture/bloc/fixture_bloc.dart';
import 'package:football_app/features/competitions/presentation/bloc/league_details/remote/bloc/league_details_bloc.dart';
import 'package:football_app/features/competitions/presentation/bloc/standing/bloc/standing_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & Api Services
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<CompetitionsApiService>(
    () => CompetitionsApiService(dio),
  );

  // dependencies
  getIt.registerLazySingleton<CompetitionsRepo>(
    () => CompetitionsRepoImpl(getIt<CompetitionsApiService>()),
  );

  // UseCases

    // Competitions UseCases
  getIt.registerLazySingleton(
    () => GetPopularLeaguesUseCase(getIt<CompetitionsRepo>()),
  );
  getIt.registerLazySingleton(
    () => GetLeagueDetailsByIdUseCase(getIt<CompetitionsRepo>()),
  );

  getIt.registerLazySingleton(
    () => GetAllMachesByLeagueIdUseCase(getIt<CompetitionsRepo>()),
  );

  getIt.registerLazySingleton(
    () => GetLeagueStandingByIdUseCase(getIt<CompetitionsRepo>()),
  );

  // Blocs
  getIt.registerFactory(
    () => RemoteCompetitionsBloc(getIt<GetPopularLeaguesUseCase>()),
  );
  getIt.registerFactory(
    () => LeagueDetailsBloc(getIt<GetLeagueDetailsByIdUseCase>()),
  );

  getIt.registerFactory(
    () => FixtureBloc(getIt<GetAllMachesByLeagueIdUseCase>()),
  );
  getIt.registerFactory(
    () => StandingBloc(getIt<GetLeagueStandingByIdUseCase>()),
  );
}
