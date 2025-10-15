import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_app/core/theme/colors.dart';
import 'package:football_app/features/competitions/domain/entities/league_matches/match_entity.dart';
import 'package:football_app/features/competitions/presentation/bloc/fixture/bloc/fixture_bloc.dart';

class FixturesList extends StatelessWidget {
  const FixturesList({super.key});

  String _formatDateTime(String utcTime) {
    try {
      final dateTime = DateTime.parse(utcTime);
      final day = dateTime.day.toString().padLeft(2, '0');
      final month = dateTime.month.toString().padLeft(2, '0');
      return '$day/$month';
    } catch (e) {
      return '';
    }
  }

  String _formatTime(String utcTime) {
    try {
      final dateTime = DateTime.parse(utcTime);
      final hour = dateTime.hour.toString().padLeft(2, '0');
      final minute = dateTime.minute.toString().padLeft(2, '0');
      return '$hour:$minute';
    } catch (e) {
      return 'TBD';
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FixtureBloc, FixtureState>(
      builder: (context, state) {
        return state.when(
          machesLoading: () => const Center(
            child: CircularProgressIndicator(color: AppColors.primaryColor),
          ),
          machesLoaded: (matches) {
            // Filter out past matches - only show upcoming ones
            final now = DateTime.now();
            final upcomingMatches = matches.where((match) {
              try {
                if (match.status?.utcTime == null || match.status!.utcTime!.isEmpty) {
                  return true; // Include matches without date (TBD)
                }
                final matchDate = DateTime.parse(match.status!.utcTime!);
                return matchDate.isAfter(now);
              } catch (e) {
                debugPrint('Error parsing date for match: $e');
                return true; // Include matches with parsing errors
              }
            }).toList();

            if (upcomingMatches.isEmpty) {
              return const Center(
                child: Text(
                  'No upcoming fixtures available',
                  style: TextStyle(
                    color: AppColors.lightGreyColor,
                    fontSize: 16,
                  ),
                ),
              );
            }

            // Group matches by date
            final Map<String, List<MatchEntity>> groupedMatches = {};

            for (var match in upcomingMatches) {
              try {
                String groupKey = 'Upcoming Fixtures';

                if (match.status!.utcTime!.isNotEmpty) {
                  final date = DateTime.tryParse(match.status!.utcTime!);
                  if (date != null) {
                    groupKey = '${date.day}/${date.month}/${date.year}';
                  }
                }

                if (!groupedMatches.containsKey(groupKey)) {
                  groupedMatches[groupKey] = [];
                }
                groupedMatches[groupKey]!.add(match);
              } catch (e) {
                debugPrint('Error grouping match: $e');
              }
            }

            // Sort the groups by date
            final sortedKeys = groupedMatches.keys.toList()..sort((a, b) {
              if (a == 'Upcoming Fixtures') return -1;
              if (b == 'Upcoming Fixtures') return 1;
              
              try {
                final dateA = a.split('/');
                final dateB = b.split('/');
                final dateTimeA = DateTime(
                  int.parse(dateA[2]),
                  int.parse(dateA[1]),
                  int.parse(dateA[0]),
                );
                final dateTimeB = DateTime(
                  int.parse(dateB[2]),
                  int.parse(dateB[1]),
                  int.parse(dateB[0]),
                );
                return dateTimeA.compareTo(dateTimeB);
              } catch (e) {
                return 0;
              }
            });

            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: sortedKeys.length,
              itemBuilder: (context, groupIndex) {
                final groupKey = sortedKeys[groupIndex];
                final groupMatches = groupedMatches[groupKey]!;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                        bottom: 12,
                        top: 8,
                      ),
                      child: Text(
                        groupKey,
                        style: const TextStyle(
                          color: AppColors.lightGreyColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    ...groupMatches.map((match) => _buildFixtureCard(match)),
                  ],
                );
              },
            );
          },
          machesError: (error) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.error_outline,
                  color: AppColors.lightGreyColor,
                  size: 48,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Error loading fixtures',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  error,
                  style: const TextStyle(
                    color: AppColors.lightGreyColor,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildFixtureCard(MatchEntity match) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          // Date column
          SizedBox(
            width: 50,
            child: Text(
              _formatDateTime(match.status!.utcTime!),
              style: const TextStyle(
                color: AppColors.lightGreyColor,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(width: 16),
          // Teams column
          Expanded(
            child: Column(
              children: [
                // Home team
                Row(
                  children: [
                    _buildTeamLogo('https://images.fotmob.com/image_resources/logo/teamlogo/10260.png'),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        match.home!.name!,
                        style: const TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                // Away team
                Row(
                  children: [
                    _buildTeamLogo('https://images.fotmob.com/image_resources/logo/teamlogo/8650.png'),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        match.away!.name ?? 'TBD',
                        style: const TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          // Time column
          SizedBox(
            width: 60,
            child: Text(
              _formatTime(match.status!.utcTime!),
              style: const TextStyle(
                color: AppColors.whiteColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTeamLogo(String? logoUrl) {
    if (logoUrl == null || logoUrl.isEmpty) {
      return Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: AppColors.darkGreyColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: const Icon(
          Icons.sports_soccer,
          size: 20,
          color: AppColors.lightGreyColor,
        ),
      );
    }

    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Image.network(
          logoUrl,
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) {
            return const Icon(
              Icons.sports_soccer,
              size: 20,
              color: AppColors.darkGreyColor,
            );
          },
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return const Center(
              child: SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: AppColors.primaryColor,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}