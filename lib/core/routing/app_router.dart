
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_app/core/di/dependency_injection.dart';
import 'package:football_app/core/routing/routes.dart';
import 'package:football_app/core/theme/colors.dart';
import 'package:football_app/features/competitions/presentation/bloc/competitions/remote/bloc/remote_competitions_bloc.dart';
import 'package:football_app/features/competitions/presentation/screens/competition_details_screen.dart';
import 'package:football_app/features/competitions/presentation/screens/competitions_screen.dart';
import 'package:football_app/features/home/presentation/screens/home_screen.dart';
import 'package:football_app/features/home/presentation/screens/main_screen.dart';
import 'package:football_app/features/news/ui/screens/news_screen.dart';
import 'package:football_app/features/profile/presentation/screens/account_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.mainScreen:
        return MaterialPageRoute(builder: (_) => BlocProvider(
          create: (context) =>
              getIt<RemoteCompetitionsBloc>()
                ..add(const RemoteCompetitionsEvent.getPopularLeagues()) 
                ,
          child: const MainScreen(),
        ));
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.competitionsScreen:
        return MaterialPageRoute(builder: (_) => const CompetitionsScreen());
      case Routes.competitionDetailsScreen:
        final laegueId = settings.arguments as int;
        return MaterialPageRoute(builder: (_) =>  CompetitionDetailsScreen(leagueId: laegueId,));
      case Routes.newsScreen:
        return MaterialPageRoute(builder: (_) => const NewsScreen());
      case Routes.accountScreen:
        return MaterialPageRoute(builder: (_) => const AccountScreen());
      default:
        return MaterialPageRoute(
          builder: (_) =>  Scaffold(
            appBar: AppBar(
              title: Text('No Route Found'),
              backgroundColor: AppColors.backgroundColor,
            ),
            body: Center(
              child: Text('No route defined for this path'),
            ),
          ),
        );
    }
  }
}
