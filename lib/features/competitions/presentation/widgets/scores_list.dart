import 'package:flutter/material.dart';
import 'package:football_app/features/home/presentation/widgets/match_result.dart';

class ScoresList extends StatelessWidget {
  const ScoresList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(Icons.calendar_month, color: Colors.white, size: 20),
              const SizedBox(width: 8),
              const Text(
                'Matchweek 31',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        MatchResult(
          homeTeam: 'West Ham United',
          homeIcon: Icons.sports_soccer,
          homeScore: '2',
          awayTeam: 'Arsenal',
          awayIcon: Icons.sports_soccer,
          awayScore: '2',
          date: '15/4',
          isFinished: true,
        ),
        MatchResult(
          homeTeam: 'Chelsea',
          homeIcon: Icons.sports_soccer,
          homeScore: '1',
          awayTeam: 'Brighton & Hove Albion',
          awayIcon: Icons.sports_soccer,
          awayScore: '2',
          date: '15/4',
          isFinished: true,
        ),
        MatchResult(
          homeTeam: 'Manchester City',
          homeIcon: Icons.sports_soccer,
          homeScore: '3',
          awayTeam: 'Leicester City',
          awayIcon: Icons.sports_soccer,
          awayScore: '1',
          date: '15/4',
          isFinished: true,
        ),
      ],
    );
  }
}
