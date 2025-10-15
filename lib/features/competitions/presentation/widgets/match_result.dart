import 'package:flutter/material.dart';
import 'package:football_app/core/theme/colors.dart';

class MatchResult extends StatelessWidget {
  final String homeTeam;
  final IconData homeIcon;
  final String homeScore;
  final String awayTeam;
  final IconData awayIcon;
  final String awayScore;
  final String date;
  final bool isFinished;
  const MatchResult({
    super.key,
    required this.homeTeam,
    required this.homeIcon,
    required this.homeScore,
    required this.awayTeam,
    required this.awayIcon,
    required this.awayScore,
    required this.date,
    required this.isFinished,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                isFinished ? 'FT' : '',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                date,
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(homeIcon, size: 24, color: Colors.white),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        homeTeam,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Text(
                      homeScore,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Icon(awayIcon, size: 24, color: Colors.white),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        awayTeam,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Text(
                      awayScore,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
