import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_app/core/di/dependency_injection.dart';
import 'package:football_app/core/routing/routes.dart';
import 'package:football_app/features/competitions/presentation/bloc/competitions/remote/bloc/remote_competitions_bloc.dart';
import 'package:football_app/features/competitions/presentation/screens/competition_details_screen.dart';
import 'package:football_app/features/competitions/presentation/screens/competitions_screen.dart';
import 'package:football_app/features/home/presentation/screens/home_screen.dart';
import 'package:football_app/features/home/presentation/screens/main_screen.dart';
import 'package:football_app/features/home/presentation/screens/match_details_secreen.dart';
import 'package:football_app/features/home/presentation/screens/something_went_wrong.dart';
import 'package:football_app/features/news/presentation/screens/news_screen.dart';
import 'package:football_app/features/profile/presentation/screens/account_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.mainScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                getIt<RemoteCompetitionsBloc>()
                  ..add(const RemoteCompetitionsEvent.getPopularLeagues()),
            child: const MainScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.competitionsScreen:
        return MaterialPageRoute(builder: (_) => const CompetitionsScreen());
      case Routes.competitionDetailsScreen:
        final leagueId = settings.arguments;
        if (leagueId == null) {
          return MaterialPageRoute(
            builder: (_) => const SomethingWentWrongScreen(),
          );
        }
        return MaterialPageRoute(
          builder: (_) => CompetitionDetailsScreen(leagueId: leagueId as int),
        );
      case Routes.newsScreen:
        return MaterialPageRoute(builder: (_) => const NewsScreen());
      case Routes.accountScreen:
        return MaterialPageRoute(builder: (_) => const AccountScreen());
      case Routes.matchDetailsScreen:
        final match = settings.arguments as MatchDetail;
        return MaterialPageRoute(
          builder: (_) => MatchDetailsScreen(matchDetail: match),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                getIt<RemoteCompetitionsBloc>()
                  ..add(const RemoteCompetitionsEvent.getPopularLeagues()),
            child: const MainScreen(),
          ),
        );
    }
  }
}
