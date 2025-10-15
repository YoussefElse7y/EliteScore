import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_app/core/di/dependency_injection.dart';
import 'package:football_app/core/theme/colors.dart';
import 'package:football_app/features/competitions/presentation/bloc/fixture/bloc/fixture_bloc.dart';
import 'package:football_app/features/competitions/presentation/bloc/league_details/remote/bloc/league_details_bloc.dart';
import 'package:football_app/features/competitions/presentation/widgets/fixture_list.dart';
import 'package:football_app/features/competitions/presentation/widgets/scores_list.dart';

class Match {
  final String homeTeam;
  final String awayTeam;
  final String homeLogo;
  final String awayLogo;
  final int homeScore;
  final int awayScore;
  final String status;
  final String date;
  final String time;

  Match({
    required this.homeTeam,
    required this.awayTeam,
    required this.homeLogo,
    required this.awayLogo,
    required this.homeScore,
    required this.awayScore,
    required this.status,
    required this.date,
    required this.time,
  });
}

class CompetitionDetailsScreen extends StatefulWidget {
  final int leagueId;
  const CompetitionDetailsScreen({super.key, required this.leagueId});

  @override
  State<CompetitionDetailsScreen> createState() =>
      _CompetitionDetailsScreenState();
}

class _CompetitionDetailsScreenState extends State<CompetitionDetailsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Match> matches = [
    Match(
      homeTeam: 'Nottingham Forest',
      awayTeam: 'Manchester United',
      homeLogo: '🌲',
      awayLogo: '👹',
      homeScore: 0,
      awayScore: 2,
      status: "'78",
      date: 'Matchweek 31',
      time: '',
    ),
    Match(
      homeTeam: 'West Ham United',
      awayTeam: 'Arsenal',
      homeLogo: '⚒️',
      awayLogo: '🔴',
      homeScore: 2,
      awayScore: 2,
      status: 'FT',
      date: '15/4',
      time: '',
    ),
    Match(
      homeTeam: 'Chelsea',
      awayTeam: 'Brighton & Hove Albion',
      homeLogo: '🔵',
      awayLogo: '⚪',
      homeScore: 1,
      awayScore: 2,
      status: 'FT',
      date: '15/4',
      time: '',
    ),
    Match(
      homeTeam: 'Manchester City',
      awayTeam: 'Leicester City',
      homeLogo: '💙',
      awayLogo: '🦊',
      homeScore: 3,
      awayScore: 1,
      status: 'FT',
      date: '15/4',
      time: '',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<LeagueDetailsBloc>()
            ..add(LeagueDetailsEvent.getLeagueDetails(widget.leagueId)),
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: AppColors.whiteColor),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text(
            'Competition',
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.share_outlined,
                color: AppColors.whiteColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.star_outline, color: AppColors.whiteColor),
              onPressed: () {},
            ),
          ],
        ),
        body: BlocBuilder<LeagueDetailsBloc, LeagueDetailsState>(
          builder: (context, state) {
            return state.when(
              leagueDetailsLoading: () =>
                  const Center(child: CircularProgressIndicator()),
              leagueDetailsLoaded: (leagueDetails, logoUrl) {
                return Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Column(
                        children: [
                          Container(
                            width: 64,
                            height: 64,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Container(
                                width: 90,
                                height: 90,
                                color: AppColors.backgroundColor,

                                child: Image.network(
                                  logoUrl,
                                  fit: BoxFit.cover,
                                  loadingBuilder:
                                      (context, child, loadingProgress) {
                                        if (loadingProgress == null)
                                          return child;
                                        return const Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      },
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            leagueDetails.country,
                            style: TextStyle(
                              color: AppColors.lightGreyColor,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            leagueDetails.name,
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Tabs
                    Container(
                      color: AppColors.backgroundColor,
                      child: TabBar(
                        controller: _tabController,
                        indicatorColor: AppColors.primaryColor,
                        indicatorWeight: 3,
                        labelColor: AppColors.whiteColor,
                        unselectedLabelColor: AppColors.darkGreyColor,
                        labelStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        unselectedLabelStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        tabs: const [
                          Tab(text: 'Results'),
                          Tab(text: 'Fixtures'),
                          Tab(text: 'Standings'),
                          Tab(text: 'Stats'),
                        ],
                      ),
                    ),

                    // Tab Content
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          // Results Tab
                          ScoresList(),

                          // Fixtures Tab - UPDATED
                          BlocProvider(
                            create: (context) => getIt<FixtureBloc>()
                              ..add(FixtureEvent.getFixture(widget.leagueId)),
                            child: const FixturesList(),
                          ),

                          // Standings Tab (placeholder)
                          const Center(
                            child: Text(
                              'Standings',
                              style: TextStyle(color: AppColors.whiteColor),
                            ),
                          ),

                          // Stats Tab (placeholder)
                          const Center(
                            child: Text(
                              'Stats',
                              style: TextStyle(color: AppColors.whiteColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
              leagueDetailsError: (error) {
                return Center(child: Text(error.message!));
              },
            );
          },
        ),
      ),
    );
  }
}
