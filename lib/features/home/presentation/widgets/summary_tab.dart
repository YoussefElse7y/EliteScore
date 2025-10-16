import 'package:flutter/material.dart';

class SummaryTab extends StatelessWidget {
  const SummaryTab({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // Match Events
        _buildMatchEvent(
          time: '78\'',
          icon: Icons.sync,
          iconColor: const Color(0xFF2ECC71),
          homeEvent: const EventDetail(
            title: 'In: Fred',
            titleColor: Color(0xFF2ECC71),
            subtitle: 'Out: C. Eriksen',
            subtitleColor: Colors.red,
          ),
        ),
        _buildMatchEvent(
          time: '76\'',
          icon: Icons.sports_soccer,
          iconColor: Colors.white,
          awayEvent: const EventDetail(
            title: 'Dalot',
            subtitle: 'Asst: Antony',
            subtitleColor: Colors.grey,
          ),
        ),
        _buildMatchEvent(
          time: '67\'',
          icon: Icons.square,
          iconColor: Colors.yellow,
          homeEvent: const EventDetail(title: 'N. Williams'),
        ),
        _buildMatchEvent(
          time: '65\'',
          icon: Icons.sync,
          iconColor: const Color(0xFF2ECC71),
          homeEvent: const EventDetail(
            title: 'In: S. Surridge',
            titleColor: Color(0xFF2ECC71),
            subtitle: 'Out: T. Awoniyi',
            subtitleColor: Colors.red,
          ),
        ),

        // Half Time
        const SizedBox(height: 20),
        _buildDivider('Half Time'),
        _buildScoreLine('Nottingham Forest 0-1 Manchester United'),
        const SizedBox(height: 20),

        // First Half Events
        _buildMatchEvent(
          time: '32\'',
          icon: Icons.sports_soccer,
          iconColor: Colors.white,
          awayEvent: const EventDetail(title: 'Antony'),
        ),
        _buildMatchEvent(
          time: '3\'',
          icon: Icons.square,
          iconColor: Colors.yellow,
          awayEvent: const EventDetail(title: 'H. Maguire'),
        ),

        // Kick Off
        const SizedBox(height: 20),
        _buildDivider('Kick Off'),
        _buildScoreLine('22.30'),
        const SizedBox(height: 20),

        // Stadium Info
        _buildStadiumInfo(),
      ],
    );

    
  
  }

  
  Widget _buildMatchEvent({
    required String time,
    required IconData icon,
    required Color iconColor,
    EventDetail? homeEvent,
    EventDetail? awayEvent,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          // Home Event
          Expanded(
            child: homeEvent != null
                ? Align(
                    alignment: Alignment.centerRight,
                    child: _buildEventDetail(homeEvent, true),
                  )
                : const SizedBox(),
          ),

          // Time and Icon
          SizedBox(
            width: 80,
            child: Column(
              children: [
                Text(
                  time,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Icon(icon, color: iconColor, size: 20),
              ],
            ),
          ),

          // Away Event
          Expanded(
            child: awayEvent != null
                ? Align(
                    alignment: Alignment.centerLeft,
                    child: _buildEventDetail(awayEvent, false),
                  )
                : const SizedBox(),
          ),
        ],
      ),
    );
  }

  
  Widget _buildEventDetail(EventDetail event, bool isHome) {
    return Column(
      crossAxisAlignment: isHome
          ? CrossAxisAlignment.end
          : CrossAxisAlignment.start,
      children: [
        Text(
          event.title,
          style: TextStyle(
            color: event.titleColor ?? Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        if (event.subtitle != null) ...[
          const SizedBox(height: 2),
          Text(
            event.subtitle!,
            style: TextStyle(
              color: event.subtitleColor ?? Colors.grey[500],
              fontSize: 13,
            ),
          ),
        ],
      ],
    );
  }

  
  Widget _buildDivider(String text) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }


  
  Widget _buildScoreLine(String text) {
    return Center(
      child: Text(
        text,
        style: TextStyle(color: Colors.grey[400], fontSize: 14),
      ),
    );
  }



  Widget _buildStadiumInfo() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const Text(
            'Stadium: ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'City Ground',
            style: TextStyle(color: Colors.grey[400], fontSize: 15),
          ),
        ],
      ),
    );
  }





}

class EventDetail {
  final String title;
  final Color? titleColor;
  final String? subtitle;
  final Color? subtitleColor;

  const EventDetail({
    required this.title,
    this.titleColor,
    this.subtitle,
    this.subtitleColor,
  });
}