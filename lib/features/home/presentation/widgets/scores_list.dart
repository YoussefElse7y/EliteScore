import 'package:flutter/material.dart';
import 'package:football_app/features/home/presentation/widgets/match_result.dart';
import 'package:football_app/generated/l10n.dart';

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
              Icon(Icons.flag, color: Colors.white, size: 20),
              const SizedBox(width: 8),
               Text(
                 S.current.premier_league,
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
          homeLogoUrl: 'https://images.fotmob.com/image_resources/logo/teamlogo/8654.png',
          homeIcon: Icons.sports_soccer,
          homeScore: '2',
          awayTeam: 'Arsenal',
          awayLogoUrl: 'https://images.fotmob.com/image_resources/logo/teamlogo/9825.png',
          awayIcon: Icons.sports_soccer,
          awayScore: '2',
          date: '15/4',
          isFinished: true,
        ),
        MatchResult(
          homeTeam: 'Chelsea',
          homeLogoUrl: 'https://images.fotmob.com/image_resources/logo/teamlogo/8455.png',
          homeIcon: Icons.sports_soccer,
          homeScore: '1',
          awayTeam: 'Brighton & Hove Albion',
          awayLogoUrl: 'https://images.fotmob.com/image_resources/logo/teamlogo/10204.png',
          awayIcon: Icons.sports_soccer,
          awayScore: '2',
          date: '15/4',
          isFinished: true,
        ),
        MatchResult(
          homeTeam: 'Manchester City',
          homeLogoUrl: 'https://images.fotmob.com/image_resources/logo/teamlogo/8456.png',
          homeIcon: Icons.sports_soccer,
          homeScore: '3',
          awayTeam: 'Wolverhampton Wanderers',
          awayLogoUrl: 'https://images.fotmob.com/image_resources/logo/teamlogo/8602.png',
          awayIcon: Icons.sports_soccer,
          awayScore: '1',
          date: '15/4',
          isFinished: true,
        ),
      ],
    );
  }
}