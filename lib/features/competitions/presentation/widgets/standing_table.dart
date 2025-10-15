import 'package:flutter/material.dart';
import 'package:football_app/core/theme/colors.dart';
import 'package:football_app/features/competitions/domain/entities/league_standing/league_standing_entity.dart';

class StandingsTable extends StatelessWidget {
  final List<TeamStandingEntity>? standings;

  const StandingsTable({Key? key, required this.standings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1A1A1A),
      child: Column(
        children: [
          // Header Row
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                  child: Text(
                    '#',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    'Club',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  width: 35,
                  child: Text(
                    'PL',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  width: 35,
                  child: Text(
                    'W',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  width: 35,
                  child: Text(
                    'D',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  width: 35,
                  child: Text(
                    'L',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                  child: Text(
                    'GD',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  width: 45,
                  child: Text(
                    'PTS',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Standings List
          Expanded(
            child: ListView.builder(
              itemCount: standings!.length,
              itemBuilder: (context, index) {
                final item = standings![index];
                return StandingRow(position: item.idx ?? 0, item: item);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class StandingRow extends StatelessWidget {
  final int position;
  final TeamStandingEntity item;

  const StandingRow({super.key, required this.position, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[900]!, width: 0.5),
        ),
      ),
      child: Row(
        children: [
          // Position with colored indicator
          SizedBox(
            width: 30,
            child: Row(
              children: [
                Container(
                  width: 3,
                  height: 20,
                  decoration: BoxDecoration(
                    color: item.qualColor.toColor(),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(width: 4),
                SizedBox(
                  width: 18,
                  child: Center(
                    child: Text(
                      '$position',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Club Name
          Expanded(
            flex: 3,
            child: Text(
              item.name ?? 'club name',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.none,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          // Played
          SizedBox(
            width: 35,
            child: Text(
              '${item.played}',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[400], fontSize: 14),
            ),
          ),
          // Won
          SizedBox(
            width: 35,
            child: Text(
              '${item.wins}',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[400], fontSize: 14),
            ),
          ),
          // Draw
          SizedBox(
            width: 35,
            child: Text(
              '${item.draws}',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[400], fontSize: 14),
            ),
          ),
          // Lost
          SizedBox(
            width: 35,
            child: Text(
              '${item.losses}',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[400], fontSize: 14),
            ),
          ),
          // Goal Difference
          SizedBox(
            width: 40,
            child: Text(
              item.goalConDiff! > 0
                  ? '+${item.goalConDiff}'
                  : '${item.goalConDiff}',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[400], fontSize: 14),
            ),
          ),
          // Points
          SizedBox(
            width: 45,
            child: Text(
              '${item.pts}',
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Color(0xFFFF4B8C),
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
