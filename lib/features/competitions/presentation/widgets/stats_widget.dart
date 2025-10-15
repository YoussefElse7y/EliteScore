import 'package:flutter/material.dart';

class StatsWidget extends StatefulWidget {
  const StatsWidget({Key? key}) : super(key: key);

  @override
  State<StatsWidget> createState() => _StatsWidgetState();
}

class _StatsWidgetState extends State<StatsWidget> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> _statCategories = ['Goals', 'Assists', 'Clean Sheet'];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _previousPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _nextPage() {
    if (_currentPage < _statCategories.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1A1A1A),
      child: Column(
        children: [
          // Category Header with Navigation
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _statCategories[_currentPage],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: _previousPage,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Icon(
                          Icons.chevron_left,
                          color: _currentPage > 0
                              ? Colors.white
                              : Colors.grey[700],
                          size: 28,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    GestureDetector(
                      onTap: _nextPage,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Icon(
                          Icons.chevron_right,
                          color: _currentPage < _statCategories.length - 1
                              ? Colors.white
                              : Colors.grey[700],
                          size: 28,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Stats List
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                // Goals Page
                StatsListView(stats: getFakeGoalsStats(), statLabel: 'Goals'),
                // Assists Page
                StatsListView(
                  stats: getFakeAssistsStats(),
                  statLabel: 'Assist',
                ),
                // Clean Sheets Page
                StatsListView(
                  stats: getFakeCleanSheetStats(),
                  statLabel: 'Assist',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StatsListView extends StatelessWidget {
  final List<PlayerStat> stats;
  final String statLabel;

  const StatsListView({Key? key, required this.stats, required this.statLabel})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header Row
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              SizedBox(
                width: 40,
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
                child: Text(
                  'Player',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                width: 60,
                child: Text(
                  statLabel,
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
        // Stats List
        Expanded(
          child: ListView.builder(
            itemCount: stats.length,
            itemBuilder: (context, index) {
              final stat = stats[index];
              return PlayerStatRow(position: index + 1, stat: stat);
            },
          ),
        ),
      ],
    );
  }
}

class PlayerStatRow extends StatelessWidget {
  final int position;
  final PlayerStat stat;

  const PlayerStatRow({Key? key, required this.position, required this.stat})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        border: Border(
          bottom: BorderSide(color: Colors.grey[900]!, width: 0.5),
        ),
      ),
      child: Row(
        children: [
          // Position
          SizedBox(
            width: 40,
            child: Text(
              '$position',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          // Player Avatar and Info
          Expanded(
            child: Row(
              children: [
                // Avatar
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[800],
                  ),
                  child: ClipOval(
                    child: stat.avatarUrl != null
                        ? Image.network(
                            stat.avatarUrl!,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Center(
                                child: Text(
                                  stat.playerName[0].toUpperCase(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              );
                            },
                          )
                        : Center(
                            child: Text(
                              stat.playerName[0].toUpperCase(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                  ),
                ),
                const SizedBox(width: 12),
                // Player Name and Team
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        stat.playerName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        stat.teamName,
                        style: TextStyle(color: Colors.grey[500], fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Stat Value
          SizedBox(
            width: 60,
            child: Text(
              '${stat.value}',
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Color(0xFFFF4B8C),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PlayerStat {
  final String playerName;
  final String teamName;
  final int value;
  final String? avatarUrl;

  PlayerStat({
    required this.playerName,
    required this.teamName,
    required this.value,
    this.avatarUrl,
  });
}

// Fake Data
List<PlayerStat> getFakeGoalsStats() {
  return [
    PlayerStat(
      playerName: 'Erling Haaland',
      teamName: 'Manchester City',
      value: 34,
    ),
    PlayerStat(playerName: 'Harry Kane', teamName: 'Tottenham', value: 25),
    PlayerStat(playerName: 'Ivan Toney', teamName: 'Brentford', value: 20),
    PlayerStat(playerName: 'Mohamed Salah', teamName: 'Liverpool', value: 17),
    PlayerStat(
      playerName: 'Marcus Rashford',
      teamName: 'Manchester United',
      value: 16,
    ),
    PlayerStat(
      playerName: 'Callum Wilson',
      teamName: 'Newcastle United',
      value: 15,
    ),
    PlayerStat(playerName: 'Ollie Watkins', teamName: 'Aston Villa', value: 14),
    PlayerStat(playerName: 'Bukayo Saka', teamName: 'Arsenal', value: 13),
    PlayerStat(playerName: 'Darwin Nunez', teamName: 'Liverpool', value: 12),
    PlayerStat(playerName: 'Gabriel Jesus', teamName: 'Arsenal', value: 11),
  ];
}

List<PlayerStat> getFakeAssistsStats() {
  return [
    PlayerStat(
      playerName: 'Kevin De Bruyne',
      teamName: 'Manchester City',
      value: 16,
    ),
    PlayerStat(playerName: 'Bukayo Saka', teamName: 'Arsenal', value: 11),
    PlayerStat(playerName: 'Leandro Trossard', teamName: 'Arsenal', value: 10),
    PlayerStat(
      playerName: 'Michael Olise',
      teamName: 'Crystal Palace',
      value: 9,
    ),
    PlayerStat(playerName: 'Andrew Robertson', teamName: 'Liverpool', value: 8),
    PlayerStat(
      playerName: 'Bruno Fernandes',
      teamName: 'Manchester United',
      value: 8,
    ),
    PlayerStat(playerName: 'Martin Odegaard', teamName: 'Arsenal', value: 7),
    PlayerStat(playerName: 'Harry Kane', teamName: 'Tottenham', value: 7),
    PlayerStat(
      playerName: 'Jack Grealish',
      teamName: 'Manchester City',
      value: 7,
    ),
    PlayerStat(
      playerName: 'Kieran Trippier',
      teamName: 'Newcastle United',
      value: 6,
    ),
  ];
}

List<PlayerStat> getFakeCleanSheetStats() {
  return [
    PlayerStat(
      playerName: 'David de Gea',
      teamName: 'Manchester United',
      value: 15,
    ),
    PlayerStat(
      playerName: 'Nick Pope',
      teamName: 'Newcastle United',
      value: 13,
    ),
    PlayerStat(playerName: 'Aaron Ramsdale', teamName: 'Arsenal', value: 12),
    PlayerStat(
      playerName: 'Emiliano Martinez',
      teamName: 'Aston Villa',
      value: 11,
    ),
    PlayerStat(playerName: 'Jose Sa', teamName: 'Wolves', value: 10),
    PlayerStat(playerName: 'Alisson Becker', teamName: 'Liverpool', value: 9),
    PlayerStat(playerName: 'Ederson', teamName: 'Manchester City', value: 9),
    PlayerStat(playerName: 'Robert Sanchez', teamName: 'Brighton', value: 8),
    PlayerStat(playerName: 'Jordan Pickford', teamName: 'Everton', value: 7),
    PlayerStat(playerName: 'Bernd Leno', teamName: 'Fulham', value: 7),
  ];
}

// Usage in your TabBarView:
// StatsWidget()
