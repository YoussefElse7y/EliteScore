import 'package:flutter/material.dart';

class LineUpTab extends StatelessWidget {
  const LineUpTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1A1A1A),
      child: ListView(
        children: [
          // Home Team Formation
          _buildTeamLineup(
            teamName: 'Nottingham Forest',
            formation: '3-4-1-2',
            isHome: true,
          ),

          const SizedBox(height: 20),

          // Away Team Formation
          _buildTeamLineup(
            teamName: 'Manchester United',
            formation: '4-3-3',
            isHome: false,
          ),

          const SizedBox(height: 20),

          // Substitutes Section
          _buildSubstitutesSection(),

          const SizedBox(height: 20),

          // Manager Section
          _buildManagerSection(),

          const SizedBox(height: 20),

          // Missed Players Section
          _buildMissedPlayersSection(),

          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget _buildTeamLineup({
    required String teamName,
    required String formation,
    required bool isHome,
  }) {
    return Column(
      children: [
        // Team Header
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                teamName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                formation,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),

        // Football Field
        Container(
          height: 500,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: const Color(0xFF1A3A1A),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.white.withOpacity(0.2), width: 1),
          ),
          child: Stack(
            children: [
              // Field lines
              _buildFieldLines(),

              // Players
              if (isHome)
                ..._buildHomeTeamPlayers()
              else
                ..._buildAwayTeamPlayers(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFieldLines() {
    return CustomPaint(
      size: const Size(double.infinity, double.infinity),
      painter: FieldPainter(),
    );
  }

  List<Widget> _buildHomeTeamPlayers() {
    return [
      // Goalkeeper
      _homeGK('GK', 1),
      // Defenders
      _homeRB('RB', 3),
      _homeRCB('RCB', 3),
      _homeCB('CB', 5),
      _homeLCB('LCB', 26),
      _homeLB('LB', 26),

      // Midfielders
      _homeRWB('RWB', 7),
      _homeRDM("RDM", 23),
      _homeCDM('CDM', 6),
      _homeLDM("LDM", 28),
      _homeLWB("LWB", 32),
      // Forwards
      _buildPlayer('B. Johnson', 20, 0.35, 0.72),
      _buildPlayer('T. Awoniyi', 9, 0.65, 0.72),
    ];
  }

  // Widget _player(String name, int number, PositionType position) {
  //   switch (position) {
  //     case PositionType.gk:
  //       return _homeGK(name, number);
  //     case PositionType.cb:
  //       return _homeCB(name, number);
  //     case PositionType.rb:
  //       return _homeRB(name, number);
  //     case PositionType.rcb:
  //       return _homeRCB(name, number);
  //     case PositionType.lcb:
  //       return _homeLCB(name, number);
  //     case PositionType.ldm:
  //       return _homeLDM(name, number);
  //     case PositionType.cdm:
  //       return _homeCDM(name, number);
  //     case PositionType.rdm:
  //       return _homeRDM(name, number);
  //     default:
  //       return SizedBox.shrink();
  //   }
  // }

  Widget _homeRWB(String name, int number) {
    return _buildPlayer(name, number, 0.15, 0.45);
  }

  Widget _homeRDM(String name, int number) {
    return _buildPlayer(name, number, 0.4, 0.4);
  }

  Widget _homeLDM(String name, int number) {
    return _buildPlayer(name, number, 0.8, 0.4);
  }

  Widget _homeLWB(String name, int number) {
    return _buildPlayer(name, number, 1.05, 0.4);
  }

  Widget _homeCDM(String name, int number) {
    return _buildPlayer(name, number, 0.6, 0.4);
  }

  Widget _homeGK(String name, int number) {
    return _buildPlayer(name, number, 0.6, 0.08);
  }

  Widget _homeCB(String name, int number) {
    return _buildPlayer(name, number, 0.6, 0.25);
  }

  Widget _homeRCB(String name, int number) {
    return _buildPlayer(name, number, 0.4, 0.22);
  }

  Widget _homeRB(String name, int number) {
    return _buildPlayer(name, number, 0.15, 0.28);
  }

  Widget _homeLCB(String name, int number) {
    return _buildPlayer(name, number, 0.8, 0.22);
  }

  Widget _homeLB(String name, int number) {
    return _buildPlayer(name, number, 1.05, 0.28);
  }

  List<Widget> _buildAwayTeamPlayers() {
    return [
      // Goalkeeper
      _buildPlayer('D. De Gea', 1, 0.5, 0.92, isAway: true),

      // Defenders
      _buildPlayer('D. Dalot', 20, 0.1, 0.78, isAway: true),
      _buildPlayer('H. Maguire', 5, 0.3, 0.78, isAway: true),
      _buildPlayer('V. Lindelof', 2, 0.7, 0.78, isAway: true),
      _buildPlayer('Wan Bissaka', 29, 0.9, 0.78, isAway: true),

      // Midfielders
      _buildPlayer('J. Sancho', 25, 0.2, 0.58, isAway: true),
      _buildPlayer('B. Fernandes', 8, 0.5, 0.58, isAway: true),
      _buildPlayer('Antony', 21, 0.8, 0.58, isAway: true),

      // Attacking Mids
      _buildPlayer('Casemiro', 18, 0.35, 0.42, isAway: true),
      _buildPlayer('C. Eriksen', 14, 0.65, 0.42, isAway: true),

      // Forward
      _buildPlayer('A. Martial', 9, 0.5, 0.25, isAway: true),
    ];
  }

  Widget _buildPlayer(
    String name,
    int number,
    double xPercent,
    double yPercent, {
    bool isAway = false,
  }) {
    return Positioned(
      left: xPercent * 320 - 25,
      top: yPercent * 500 - 35,
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isAway ? const Color(0xFF8B0000) : const Color(0xFFE53935),
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Center(
              child: Text(
                '$number',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubstitutesSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF0D0D0D),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          // Header with team logos
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.forest,
                      color: Colors.white,
                      size: 14,
                    ),
                  ),
                ],
              ),
              const Text(
                'SUBSTITUTES',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: Colors.red[700],
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.shield,
                      color: Colors.white,
                      size: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Substitutes List
          _buildSubstituteRow(
            '13',
            'W. Hennesey (GK)',
            'J. Butland (GK)',
            '31',
          ),
          _buildSubstituteRow('5', 'O. Mangala', 'N. Bishop (GK)', '30'),
          _buildSubstituteRow(
            '11',
            'J. Lingard',
            'Fred',
            '17',
            rightSubbed: true,
          ),
          _buildSubstituteRow(
            '16',
            'S. Surridge',
            'W. Weghorst',
            '27',
            leftSubbed: true,
          ),
          _buildSubstituteRow('25', 'E. Dennis', 'F. Pellistri', '28'),
          _buildSubstituteRow('4', 'J. Worrall', 'B. Williams', '33'),
          _buildSubstituteRow('8', 'J. Shelvey', 'A. Elanga', '36'),
          _buildSubstituteRow('15', 'H. Toffolo', 'Z. Iqbal', '55'),
          _buildSubstituteRow('34', 'A. Ayew', 'M. Jurado', '63'),
        ],
      ),
    );
  }

  Widget _buildSubstituteRow(
    String leftNumber,
    String leftName,
    String rightName,
    String rightNumber, {
    bool leftSubbed = false,
    bool rightSubbed = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          // Left Player
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                  child: Text(
                    leftNumber,
                    style: TextStyle(color: Colors.grey[600], fontSize: 13),
                  ),
                ),
                Expanded(
                  child: Text(
                    leftName,
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                if (leftSubbed)
                  Container(
                    width: 16,
                    height: 16,
                    decoration: const BoxDecoration(
                      color: Color(0xFF2ECC71),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_upward,
                      color: Colors.white,
                      size: 10,
                    ),
                  ),
              ],
            ),
          ),

          // Right Player
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (rightSubbed)
                  Container(
                    width: 16,
                    height: 16,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: const BoxDecoration(
                      color: Color(0xFF2ECC71),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.sports_soccer,
                      color: Colors.white,
                      size: 10,
                    ),
                  ),
                Expanded(
                  child: Text(
                    rightName,
                    textAlign: TextAlign.right,
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                SizedBox(
                  width: 30,
                  child: Text(
                    rightNumber,
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.grey[600], fontSize: 13),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildManagerSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF0D0D0D),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          const Text(
            'MANAGER',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'S. Cooper',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              Text(
                'E. ten Hag',
                style: const TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMissedPlayersSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF0D0D0D),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          const Text(
            'MISSED PLAYERS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 16),
          _buildMissedPlayerRow('S. Aurier', 'A. Garnacho'),
          _buildMissedPlayerRow('A. Cook', 'Foot Injury'),
          _buildMissedPlayerRow('D. Henderson (GK)', 'M. Rashford'),
          _buildMissedPlayerRow('Thigh Injury', 'Muscle Injury'),
          _buildMissedPlayerRow('C. Wood', 'L. Shaw'),
          _buildMissedPlayerRow('Thigh Injury', 'Thigh Injury'),
          _buildMissedPlayerRow('C. Kouyate', 'R. Varane'),
          _buildMissedPlayerRow('Thigh Injury', 'Muscle Injury'),
          _buildMissedPlayerRow('W. Boly', 'M. Sabitzer'),
          _buildMissedPlayerRow('Thigh Injury', 'Groin Injury'),
        ],
      ),
    );
  }

  Widget _buildMissedPlayerRow(String leftText, String rightText) {
    final isLeftInjury = leftText.contains('Injury');
    final isRightInjury = rightText.contains('Injury');

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Expanded(
            child: Text(
              leftText,
              style: TextStyle(
                color: isLeftInjury ? Colors.grey[600] : Colors.white,
                fontSize: 14,
              ),
            ),
          ),
          Expanded(
            child: Text(
              rightText,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: isRightInjury ? Colors.grey[600] : Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FieldPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.3)
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    // Halfway line
    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(size.width, size.height / 2),
      paint,
    );

    // Center circle
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 50, paint);

    // Center spot
    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      3,
      paint..style = PaintingStyle.fill,
    );

    paint.style = PaintingStyle.stroke;

    // Top penalty area
    canvas.drawRect(
      Rect.fromLTWH(size.width * 0.25, 0, size.width * 0.5, 60),
      paint,
    );

    // Top goal area
    canvas.drawRect(
      Rect.fromLTWH(size.width * 0.35, 0, size.width * 0.3, 30),
      paint,
    );

    // Bottom penalty area
    canvas.drawRect(
      Rect.fromLTWH(size.width * 0.25, size.height - 60, size.width * 0.5, 60),
      paint,
    );

    // Bottom goal area
    canvas.drawRect(
      Rect.fromLTWH(size.width * 0.35, size.height - 30, size.width * 0.3, 30),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

enum PositionType { gk, cb, rcb, lcb, rb, lb, rwb, rdm, cdm, ldm, lwb }

// Usage in TabBarView:
// children: [
//   SummaryTab(),
//   LineUpTab(),
//   _buildPlaceholderTab('Stats'),
//   _buildPlaceholderTab('H2H'),
//   _buildPlaceholderTab('Standings'),
//   _buildPlaceholderTab('Report'),
// ],
