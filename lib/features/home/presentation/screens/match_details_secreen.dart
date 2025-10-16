import 'package:flutter/material.dart';
import 'package:football_app/core/theme/colors.dart';
import 'package:football_app/features/home/presentation/widgets/line_up_tap.dart';
import 'package:football_app/features/home/presentation/widgets/stats_tap.dart';
import 'package:football_app/features/home/presentation/widgets/summary_tab.dart';

class MatchDetailsScreen extends StatefulWidget {
  const MatchDetailsScreen({super.key, required this.matchDetail});

  final MatchDetail matchDetail;

  @override
  State<MatchDetailsScreen> createState() => _MatchDetailsScreenState();
}

class _MatchDetailsScreenState extends State<MatchDetailsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
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
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              // App Bar
              SliverAppBar(
                backgroundColor: AppColors.backgroundColor,
                surfaceTintColor: Colors.transparent,
                elevation: 0,
                pinned: false,
                floating: false,

                automaticallyImplyLeading: false,
                expandedHeight: 80,
                flexibleSpace: FlexibleSpaceBar(
                  background: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                widget.matchDetail.leagueName,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                              const SizedBox(height: 2),
                              Text(
                                'Today',
                                style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.share_outlined,
                              color: Colors.white,
                              size: 24,
                            ),
                            SizedBox(width: 16),
                            Icon(
                              Icons.star_border,
                              color: Colors.white,
                              size: 24,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Match Header - Collapsible
              SliverAppBar(
                backgroundColor: AppColors.backgroundColor,
                surfaceTintColor: Colors.transparent,
                elevation: 0,
                pinned: true,
                automaticallyImplyLeading: false,
                expandedHeight: 250,
                collapsedHeight: 60,
                flexibleSpace: LayoutBuilder(
                  builder: (context, constraints) {
                    final expandRatio =
                        (constraints.maxHeight - 80) / (250 - 80);
                    final isCollapsed = expandRatio < 0.5;

                    return FlexibleSpaceBar(
                      background: _buildExpandedMatchHeader(),
                      title: isCollapsed ? _buildCollapsedMatchHeader() : null,
                      centerTitle: true,
                      titlePadding: EdgeInsets.zero,
                    );
                  },
                ),
              ),

              // Tab Bar - Pinned
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    controller: _tabController,
                    isScrollable: true,
                    indicatorColor: AppColors.primaryColor,
                    indicatorWeight: 3,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey,
                    labelStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                    unselectedLabelStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                    tabs: const [
                      Tab(text: 'Summary'),
                      Tab(text: 'Line Up'),
                      Tab(text: 'Stats'),
                      Tab(text: 'H2H'),
                      Tab(text: 'Standings'),
                      Tab(text: 'Report'),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: [
              SummaryTab(),
              LineUpTab(),
              StatsTab(),
              _buildPlaceholderTab('H2H'),
              _buildPlaceholderTab('Standings'),
              _buildPlaceholderTab('Report'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExpandedMatchHeader() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // League Badge and Match Progress
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.network(
                      widget.matchDetail.leagueLogo,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.sports_soccer,
                          color: Colors.white,
                          size: 20,
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    widget.matchDetail.leagueName,
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Icon(Icons.timer, size: 12, color: AppColors.greenColor),
                    const SizedBox(width: 4),
                    Text(
                      widget.matchDetail.matchTime,
                      style: TextStyle(
                        color: AppColors.greenColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Teams and Score
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Home Team
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Image.network(
                        widget.matchDetail.homeTeamLogo,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(
                            Icons.shield,
                            color: Colors.white,
                            size: 48,
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.matchDetail.homeTeamName,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),

              // Score
              Text(
                '${widget.matchDetail.homeScore} - ${widget.matchDetail.awayScore}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 10),

              // Away Team
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Image.network(
                        widget.matchDetail.awayTeamLogo,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(
                            Icons.shield,
                            color: Colors.white,
                            size: 48,
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.matchDetail.awayTeamName,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Divider(color: AppColors.darkGreyColor),
          const SizedBox(height: 10),

          // Goal Scorers
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Antony 32'",
                    style: TextStyle(color: Colors.grey[400], fontSize: 12),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Diogo Dalot 76'",
                    style: TextStyle(color: Colors.grey[400], fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(width: 8),
              const Icon(Icons.sports_soccer, color: Colors.grey, size: 16),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCollapsedMatchHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Home Team Logo
          SizedBox(
            width: 32,
            height: 32,
            child: Image.network(
              widget.matchDetail.homeTeamLogo,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.shield, color: Colors.white, size: 32);
              },
            ),
          ),
          const SizedBox(width: 12),

          // Score
          Text(
            '${widget.matchDetail.homeScore} - ${widget.matchDetail.awayScore}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 12),

          // Away Team Logo
          SizedBox(
            width: 32,
            height: 32,
            child: Image.network(
              widget.matchDetail.awayTeamLogo,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.shield, color: Colors.white, size: 32);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlaceholderTab(String title) {
    return Center(
      child: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}

// Custom delegate for pinned TabBar
class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(color: AppColors.backgroundColor, child: _tabBar);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class MatchDetail {
  final String leagueName;
  final String leagueLogo;
  final String matchTime;
  final String homeTeamName;
  final String homeTeamLogo;
  final String awayTeamName;
  final String awayTeamLogo;
  final String homeScore;
  final String awayScore;

  const MatchDetail({
    required this.leagueName,
    required this.leagueLogo,
    required this.matchTime,
    required this.homeTeamName,
    required this.homeTeamLogo,
    required this.awayTeamName,
    required this.awayTeamLogo,
    required this.homeScore,
    required this.awayScore,
  });
}
