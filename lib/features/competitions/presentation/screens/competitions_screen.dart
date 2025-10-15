import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_app/core/routing/routes.dart';
import 'package:football_app/core/theme/colors.dart';
import 'package:football_app/core/widgets/custom_snack_bar.dart';
import 'package:football_app/features/competitions/domain/entities/popular_league_entity.dart';
import 'package:football_app/features/competitions/presentation/bloc/competitions/remote/bloc/remote_competitions_bloc.dart';
import 'package:football_app/generated/l10n.dart';
class CompetitionsScreen extends StatefulWidget {
  const CompetitionsScreen({super.key});

  @override
  State<CompetitionsScreen> createState() => _CompetitionsScreenState();
}

class _CompetitionsScreenState extends State<CompetitionsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: BlocBuilder<RemoteCompetitionsBloc, RemoteCompetitionsState>(
        builder: (context, state) {
          return state.when(
            remotePopularLeaguesLoading: () {
              return const Center(
                child: CircularProgressIndicator(color: Colors.white),
              );
            },
            remotePopularLeaguesLoaded: (List<PopularLeagueEntity> leagues) {
              return SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        S.current.browse_competitions,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    _buildSearchBar(),
                    const SizedBox(height: 24),
                    _buildTabBar(),
                    const SizedBox(height: 16),
                     Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        S.current.top_competitions,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemCount: leagues.length,
                        separatorBuilder: (context, index) =>
                            const Divider(color: Color(0xFF2A2A2A), height: 1),
                        itemBuilder: (context, index) {
                          final league = leagues[index];
                          return _buildCompetitionItem(league);
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
            remotePopularLeaguesError: (DioException error) {
              CustomSnackBar.show(
                context,
                message: 'Please check your internet connection.',
                type: SnackBarType.warning,
              );
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.error, color: AppColors.redColor, size: 64),
                    const SizedBox(height: 16),
                    Text(
                      'Failed to load competitions.\n${error.message}',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: AppColors.redColor, fontSize: 16),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        decoration: BoxDecoration(
          color: const Color(0xFF2A2A2A),
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextField(
          style: const TextStyle(color: Colors.white, fontSize: 16),
          decoration: InputDecoration(
            hintText: S.current.search_for_competitions,
            hintStyle: TextStyle(color: Colors.grey.shade600, fontSize: 16),
            icon: Icon(Icons.search, color: Colors.grey.shade600, size: 24),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      controller: _tabController,
      labelColor: Colors.white,
      unselectedLabelColor: Colors.grey,
      labelStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
      unselectedLabelStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.normal,
      ),
      indicatorColor: const Color(0xFFFF4081),
      indicatorWeight: 3,
      indicatorSize: TabBarIndicatorSize.label,
      tabs:  [
        Tab(text: S.current.top),
        Tab(text: S.current.region),
        Tab(text: S.current.favorites),
      ],
    );
  }

  Widget _buildCompetitionItem(PopularLeagueEntity league) {
    return InkWell(
      onTap: () {
        
        Navigator.pushNamed(context, Routes.competitionDetailsScreen,arguments: league.id);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                shape: BoxShape.circle,
              ),
              child: Image.network(league.logo, fit: BoxFit.cover),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    league.localizedName,
                    style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    league.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.chevron_right, color: Colors.grey, size: 24),
          ],
        ),
      ),
    );
  }
}

class CompetitionItem {
  final String region;
  final String competition;
  final IconData flagIcon;

  CompetitionItem({
    required this.region,
    required this.competition,
    required this.flagIcon,
  });
}
