import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_app/core/di/dependency_injection.dart';
import 'package:football_app/core/theme/colors.dart';
import 'package:football_app/features/competitions/presentation/bloc/fixture/bloc/fixture_bloc.dart';
import 'package:football_app/features/competitions/presentation/bloc/league_details/remote/bloc/league_details_bloc.dart';
import 'package:football_app/features/competitions/presentation/bloc/standing/bloc/standing_bloc.dart';
import 'package:football_app/features/competitions/presentation/widgets/fixture_list.dart';
import 'package:football_app/features/competitions/presentation/widgets/scores_list.dart';
import 'package:football_app/features/competitions/presentation/widgets/standing_table.dart';
import 'package:football_app/features/competitions/presentation/widgets/stats_widget.dart';
import 'package:football_app/generated/l10n.dart';

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
  late ScrollController _scrollController;
  double _scrollOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _scrollOffset = _scrollController.offset;
        });
      });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
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
        body: BlocBuilder<LeagueDetailsBloc, LeagueDetailsState>(
          builder: (context, state) {
            return state.when(
              leagueDetailsLoading: () =>
                  const Center(child: CircularProgressIndicator()),
              leagueDetailsLoaded: (leagueDetails, logoUrl) {
                final titleOpacity = (_scrollOffset / 80).clamp(0.0, 1.0);
                final showCompactTitle = _scrollOffset > 120;
                return NestedScrollView(
                  controller: _scrollController,
                  headerSliverBuilder: (context, innerBoxIsScrolled) {
                    return [
                      SliverAppBar(
                        surfaceTintColor: Colors.transparent,
                        backgroundColor: AppColors.backgroundColor,
                        elevation: 0,
                        pinned: true,
                        expandedHeight: 180,
                        leading: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: AppColors.whiteColor,
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                        title: AnimatedOpacity(
                          opacity: titleOpacity,
                          duration: const Duration(milliseconds: 100),
                          child: showCompactTitle
                              ? Row(
                                  children: [
                                    Container(
                                      width: 32,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        color: AppColors.backgroundColor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Image.network(
                                          logoUrl,
                                          width: 28,
                                          height: 28,
                                          fit: BoxFit.cover,
                                          errorBuilder:
                                              (context, error, stackTrace) {
                                                return const Icon(
                                                  Icons.sports_soccer,
                                                  size: 20,
                                                );
                                              },
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Expanded(
                                      child: Text(
                                        leagueDetails.name,
                                        style: TextStyle(
                                          color: AppColors.whiteColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                )
                              : const SizedBox.shrink(),
                        ),
                        centerTitle: false,
                        actions: [
                          IconButton(
                            icon: const Icon(
                              Icons.share_outlined,
                              color: AppColors.whiteColor,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.star_outline,
                              color: AppColors.whiteColor,
                            ),
                            onPressed: () {},
                          ),
                        ],
                        flexibleSpace: FlexibleSpaceBar(
                          background: Container(
                            color: AppColors.backgroundColor,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 64,
                                  height: 64,
                                  decoration: BoxDecoration(
                                    color: AppColors.backgroundColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Image.network(
                                      logoUrl,
                                      width: 60,
                                      height: 60,
                                      fit: BoxFit.cover,
                                      loadingBuilder:
                                          (context, child, loadingProgress) {
                                            if (loadingProgress == null) {
                                              return child;
                                            }
                                            return const CircularProgressIndicator();
                                          },
                                      errorBuilder:
                                          (context, error, stackTrace) {
                                            return const Icon(
                                              Icons.sports_soccer,
                                              size: 40,
                                            );
                                          },
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  leagueDetails.country,
                                  style: TextStyle(
                                    color: AppColors.lightGreyColor,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  child: Text(
                                    leagueDetails.name,
                                    style: TextStyle(
                                      color: AppColors.whiteColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const SizedBox(height: 16),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SliverPersistentHeader(
                        pinned: true,
                        delegate: _SliverTabBarDelegate(
                          TabBar(
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
                            tabs: [
                              Tab(text: S.current.results),
                              Tab(text: S.current.fixtures),
                              Tab(text: S.current.standings),
                              Tab(text: S.current.stats),
                            ],
                          ),
                        ),
                      ),
                    ];
                  },
                  body: TabBarView(
                    controller: _tabController,
                    children: [
                      // Results Tab
                      ScoresList(),

                      // Fixtures Tab
                      BlocProvider(
                        create: (context) =>
                            getIt<FixtureBloc>()
                              ..add(FixtureEvent.getFixture(widget.leagueId)),
                        child: const FixturesList(),
                      ),

                      // Standings Tab
                      BlocProvider(
                        create: (context) =>
                            getIt<StandingBloc>()
                              ..add(StandingEvent.getStanding(widget.leagueId)),
                        child: BlocBuilder<StandingBloc, StandingState>(
                          builder: (context, state) {
                            return state.when(
                              standingLoading: () => const Center(
                                child: CircularProgressIndicator(),
                              ),
                              standingLoaded: (standings) =>
                                  StandingsTable(standings: standings),
                              standingError: (message) => Center(
                                child: Text(
                                  message.message ?? 'Something went wrong',
                                  style: const TextStyle(color: Colors.red),
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      // Stats Tab
                      const StatsWidget(),
                    ],
                  ),
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

class _SliverTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  _SliverTabBarDelegate(this.tabBar);

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(color: AppColors.backgroundColor, child: tabBar);
  }

  @override
  bool shouldRebuild(_SliverTabBarDelegate oldDelegate) {
    return false;
  }
}
