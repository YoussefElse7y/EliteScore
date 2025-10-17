import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_app/core/routing/routes.dart';
import 'package:football_app/core/theme/colors.dart';
import 'package:football_app/features/home/presentation/screens/match_details_secreen.dart';
import 'package:football_app/generated/l10n.dart';

class LiveMatchCard extends StatelessWidget {
  final String league;
  final IconData flagIcon;
  final String homeTeam;
  final IconData homeIcon;
  final String awayTeam;
  final IconData awayIcon;
  final String homeScore;
  final String awayScore;
  final String minute;
  final String leagueLogoUrl;
  final String homeLogoUrl;
  final String awayLogoUrl;

  const LiveMatchCard({
    super.key,
    required this.awayLogoUrl,
    required this.homeLogoUrl,
    required this.league,
    required this.flagIcon,
    required this.homeTeam,
    required this.homeIcon,
    required this.awayTeam,
    required this.awayIcon,
    required this.homeScore,
    required this.awayScore,
    required this.minute,
    required this.leagueLogoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                  height: 20,
                  child: Image.network(
                    leagueLogoUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.sports_soccer,
                          color: Colors.white,
                          size: 20,
                        );
                      },
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                              : null,
                        ),

                      );
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  league,
                  style: TextStyle(color: Colors.white70, fontSize: 14.sp),
                ),
                const Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2.h),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.timer, size: 12, color: AppColors.greenColor),
                      const SizedBox(width: 4),
                      Text(
                        minute,
                        style: TextStyle(
                          color: AppColors.greenColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 42,
                        height: 42,
                        child: Image.network(
                          homeLogoUrl,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.shield,
                          color: Colors.white,
                          size: 42,
                        );
                      },
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                value:
                                    loadingProgress.expectedTotalBytes != null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                          loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        homeTeam,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    '$homeScore - $awayScore',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 42,
                        height: 42,
                        child: Image.network(
                          awayLogoUrl,
                          fit: BoxFit.cover,
                           errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.shield,
                          color: Colors.white,
                          size: 42,
                        );
                      },
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                value:
                                    loadingProgress.expectedTotalBytes != null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                          loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        awayTeam,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.h),
          Padding(
            padding: const EdgeInsets.all(14),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  Routes.matchDetailsScreen,
                  arguments: MatchDetail(
                    leagueName: league,
                    leagueLogo: leagueLogoUrl,
                    matchTime: minute,
                    homeTeamName: homeTeam,
                    homeTeamLogo: homeLogoUrl,
                    awayTeamName: awayTeam,
                    awayTeamLogo: awayLogoUrl,
                    homeScore: homeScore,
                    awayScore: awayScore,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                minimumSize: Size(double.infinity, 48.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                S.current.details,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
