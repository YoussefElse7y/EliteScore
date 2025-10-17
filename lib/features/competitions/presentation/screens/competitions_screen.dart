import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_app/core/routing/routes.dart';
import 'package:football_app/core/theme/colors.dart';
import 'package:football_app/core/widgets/custom_snack_bar.dart';
import 'package:football_app/features/competitions/domain/entities/popular_league_entity.dart';
import 'package:football_app/features/competitions/presentation/bloc/competitions/remote/bloc/remote_competitions_bloc.dart';
import 'package:football_app/generated/l10n.dart';
import 'package:intl/intl.dart';

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

  // ✅ Helper: Format last updated time
  String _formatLastUpdated(DateTime? lastUpdated) {
    if (lastUpdated == null) return 'Unknown';

    final now = DateTime.now();
    final difference = now.difference(lastUpdated);

    if (difference.inMinutes < 1) {
      return 'Just now';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} hours ago';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} days ago';
    } else {
      return DateFormat.yMMMd().format(lastUpdated); // e.g., "Oct 17, 2024"
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: BlocConsumer<RemoteCompetitionsBloc, RemoteCompetitionsState>(
        listener: (context, state) {
          // ✅ Show snackbar only on initial error (no cached data)
          state.maybeWhen(
            remotePopularLeaguesError: (error, cachedData, lastUpdated) {
              if (cachedData == null || cachedData.isEmpty) {
                CustomSnackBar.show(
                  context,
                  message: 'Please check your internet connection.',
                  type: SnackBarType.warning,
                );
              }
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.when(
            // ✅ Loading State
            remotePopularLeaguesLoading: () {
              return const Center(
                child: CircularProgressIndicator(color: Colors.white),
              );
            },

            remotePopularLeaguesLoaded: (leagues, isFromCache, lastUpdated) {
              return SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (isFromCache)
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.warningColor.withOpacity(0.15),
                          border: Border(
                            bottom: BorderSide(
                              color: AppColors.warningColor.withOpacity(0.3),
                              width: 1,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.cloud_off_outlined,
                              color: AppColors.warningColor,
                              size: 20,
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'You are offline',
                                    style: TextStyle(
                                      color: AppColors.warningColor,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  if (lastUpdated != null)
                                    Text(
                                      'Last updated ${_formatLastUpdated(lastUpdated)}',
                                      style: TextStyle(
                                        color: AppColors.lightGreyColor,
                                        fontSize: 11.sp,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.refresh,
                                color: AppColors.warningColor,
                                size: 22,
                              ),
                              onPressed: () {
                                context.read<RemoteCompetitionsBloc>().add(
                                      const RemoteCompetitionsEvent
                                          .getPopularLeagues(),
                                    );
                              },
                              tooltip: 'Retry',
                            ),
                          ],
                        ),
                      ),

                    // ✅ Main Content
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
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        S.current.top_competitions,
                        style: const TextStyle(
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
                        separatorBuilder: (context, index) => const Divider(
                          color: Color(0xFF2A2A2A),
                          height: 1,
                        ),
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

            // ✅ Error State (with optional cached data)
            remotePopularLeaguesError: (error, cachedData, lastUpdated) {
              // If we have cached data, show it with error banner
              if (cachedData != null && cachedData.isNotEmpty) {
                return SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ✅ Error Banner
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.redColor.withOpacity(0.15),
                          border: Border(
                            bottom: BorderSide(
                              color: AppColors.redColor.withOpacity(0.3),
                              width: 1,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.error_outline,
                              color: AppColors.redColor,
                              size: 20,
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Connection failed',
                                    style: TextStyle(
                                      color: AppColors.redColor,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Showing cached data from ${_formatLastUpdated(lastUpdated)}',
                                    style: TextStyle(
                                      color: AppColors.lightGreyColor,
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.refresh,
                                color: AppColors.redColor,
                                size: 22,
                              ),
                              onPressed: () {
                                context.read<RemoteCompetitionsBloc>().add(
                                      const RemoteCompetitionsEvent
                                          .getPopularLeagues(),
                                    );
                              },
                              tooltip: 'Retry',
                            ),
                          ],
                        ),
                      ),

                      // ✅ Cached Data List
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
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          S.current.top_competitions,
                          style: const TextStyle(
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
                          itemCount: cachedData.length,
                          separatorBuilder: (context, index) => const Divider(
                            color: Color(0xFF2A2A2A),
                            height: 1,
                          ),
                          itemBuilder: (context, index) {
                            final league = cachedData[index];
                            return _buildCompetitionItem(league);
                          },
                        ),
                      ),
                    ],
                  ),
                );
              }

              // ✅ No Cached Data - Show Full Error Screen
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.cloud_off_outlined,
                        color: AppColors.redColor,
                        size: 80,
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'No Internet Connection',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        error.message ?? 'Please check your connection and try again',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.lightGreyColor,
                          fontSize: 14.sp,
                        ),
                      ),
                      const SizedBox(height: 32),
                      ElevatedButton.icon(
                        onPressed: () {
                          context.read<RemoteCompetitionsBloc>().add(
                                const RemoteCompetitionsEvent.getPopularLeagues(),
                              );
                        },
                        icon: const Icon(Icons.refresh),
                        label: const Text('Retry'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ),
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
      tabs: [
        Tab(text: S.current.top),
        Tab(text: S.current.region),
        Tab(text: S.current.favorites),
      ],
    );
  }

  Widget _buildCompetitionItem(PopularLeagueEntity league) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          Routes.competitionDetailsScreen,
          arguments: league.id,
        );
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
              child: ClipOval(
                child: Image.network(
                  league.logo,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(
                      Icons.sports_soccer,
                      color: Colors.grey,
                      size: 24,
                    );
                  },
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const Center(
                      child: SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.grey,
                        ),
                      ),
                    );
                  },
                ),
              ),
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