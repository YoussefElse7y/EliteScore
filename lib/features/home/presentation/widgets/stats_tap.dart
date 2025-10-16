import 'package:flutter/material.dart';

class StatsTab extends StatefulWidget {
  const StatsTab({Key? key}) : super(key: key);

  @override
  State<StatsTab> createState() => _StatsTabState();
}

class _StatsTabState extends State<StatsTab> {
  String selectedPeriod = 'Full Time';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1A1A1A),
      child: Column(
        children: [
          // Header with Team Logos and Period Selector
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Home Team Logo
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.forest,
                    color: Colors.white,
                    size: 24,
                  ),
                ),

                // Period Selector
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2A2A2A),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: DropdownButton<String>(
                    value: selectedPeriod,
                    dropdownColor: const Color(0xFF2A2A2A),
                    underline: const SizedBox(),
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    items: ['Full Time', 'First Half', 'Second Half']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        setState(() {
                          selectedPeriod = newValue;
                        });
                      }
                    },
                  ),
                ),

                // Away Team Logo
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.red[700],
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.shield,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ],
            ),
          ),

          // Stats List
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                _buildStatRow(
                  leftValue: '6',
                  rightValue: '22',
                  label: 'Shots',
                  leftPercentage: 0.21,
                  rightPercentage: 0.79,
                ),
                _buildStatRow(
                  leftValue: '0',
                  rightValue: '8',
                  label: 'Shots on Attempt',
                  leftPercentage: 0.0,
                  rightPercentage: 1.0,
                ),
                _buildStatRow(
                  leftValue: '0',
                  rightValue: '8',
                  label: 'Shots on Attempt',
                  leftPercentage: 0.0,
                  rightPercentage: 1.0,
                ),
                _buildStatRow(
                  leftValue: '31%',
                  rightValue: '69%',
                  label: 'Ball Possession',
                  leftPercentage: 0.31,
                  rightPercentage: 0.69,
                ),
                _buildStatRow(
                  leftValue: '281',
                  rightValue: '608',
                  label: 'Pass',
                  leftPercentage: 0.32,
                  rightPercentage: 0.68,
                ),
                _buildStatRow(
                  leftValue: '9',
                  rightValue: '9',
                  label: 'Fouls',
                  leftPercentage: 0.5,
                  rightPercentage: 0.5,
                ),
                _buildStatRow(
                  leftValue: '2',
                  rightValue: '2',
                  label: 'Yellow Card',
                  leftPercentage: 0.5,
                  rightPercentage: 0.5,
                ),
                _buildStatRow(
                  leftValue: '0',
                  rightValue: '0',
                  label: 'Red Card',
                  leftPercentage: 0.0,
                  rightPercentage: 0.0,
                ),
                _buildStatRow(
                  leftValue: '4',
                  rightValue: '9',
                  label: 'Corners',
                  leftPercentage: 0.31,
                  rightPercentage: 0.69,
                ),
                _buildStatRow(
                  leftValue: '1',
                  rightValue: '3',
                  label: 'Offside',
                  leftPercentage: 0.25,
                  rightPercentage: 0.75,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatRow({
    required String leftValue,
    required String rightValue,
    required String label,
    required double leftPercentage,
    required double rightPercentage,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          // Values and Label
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                leftValue,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                label,
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                rightValue,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),

          // Progress Bar
          Row(
            children: [
              // Left Team Bar
              Expanded(
                child: Stack(
                  children: [
                    // Background bar
                    Container(
                      height: 8,
                      decoration: BoxDecoration(
                        color: const Color(0xFF3A3A3A),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4),
                          bottomLeft: Radius.circular(4),
                        ),
                      ),
                    ),
                    // Progress bar
                    if (leftPercentage > 0)
                      FractionallySizedBox(
                        alignment: Alignment.centerRight,
                        widthFactor: leftPercentage,
                        child: Container(
                          height: 8,
                          decoration: const BoxDecoration(
                            color: Color(0xFFE91E63),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              bottomLeft: Radius.circular(4),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),

              const SizedBox(width: 4),

              // Right Team Bar
              Expanded(
                child: Stack(
                  children: [
                    // Background bar
                    Container(
                      height: 8,
                      decoration: BoxDecoration(
                        color: const Color(0xFF3A3A3A),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(4),
                          bottomRight: Radius.circular(4),
                        ),
                      ),
                    ),
                    // Progress bar
                    if (rightPercentage > 0)
                      FractionallySizedBox(
                        alignment: Alignment.centerLeft,
                        widthFactor: rightPercentage,
                        child: Container(
                          height: 8,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(4),
                              bottomRight: Radius.circular(4),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Usage in TabBarView:
// children: [
//   SummaryTab(),
//   LineUpTab(),
//   StatsTab(),
//   _buildPlaceholderTab('H2H'),
//   _buildPlaceholderTab('Standings'),
//   _buildPlaceholderTab('Report'),
// ],