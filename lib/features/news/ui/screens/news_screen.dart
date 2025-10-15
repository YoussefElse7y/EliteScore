// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:football_app/generated/l10n.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<NewsArticle> featuredNews = [
    NewsArticle(
      title: 'Erling Haaland Breaks a Premier League Most Scored',
      imageUrl: 'assets/news/haaland.png',
      tags: [S.current.latest, S.current.premier_league],
      timeAgo: '5 ${S.current.hours_ago}',
      isLarge: true,
    ),
    NewsArticle(
      title: 'Real Madrid Beat Real Sociedad',
      imageUrl: 'assets/news/real_madrid.png',
      tags: [S.current.latest, 'La Liga'],
      timeAgo: '5 ${S.current.hours_ago}',
      isLarge: true,
    ),
  ];

  final List<NewsArticle> newsList = [
    NewsArticle(
      title: 'PL Relegation Got Heated Up: Who\'s Get Relegated?',
      imageUrl: 'assets/news/relegation.png',
      tags: [ S.current.latest,  S.current.premier_league],
      timeAgo: '5 ${S.current.hours_ago}',
      isLarge: false,
    ),
    NewsArticle(
      title: 'Al Hilal Rumoured To Sign Leo Messi With High Offering',
      imageUrl: 'assets/news/messi.png',
      tags: [ S.current.latest, 'Transfer'],
      timeAgo: '50 ${S.current.minutes_ago}',
      isLarge: false,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            _buildTabBar(),
            const SizedBox(height: 24),
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                S.current.latest,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildFeaturedNewsCarousel(),
                    const SizedBox(height: 24),
                    _buildNewsList(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    return SizedBox(
      height: 50,
      child: TabBar(
        controller: _tabController,
        isScrollable: true,
        labelColor: Colors.white,
        unselectedLabelColor: Colors.grey,
        labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        indicatorColor: const Color(0xFFFF4081),
        indicatorWeight: 3,
        indicatorSize: TabBarIndicatorSize.label,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        tabs:  [
          Tab(text: S.current.latest),
          Tab(text: S.current.premier_league),
          Tab(text: S.current.europa_league),
          Tab(text: 'Transfer'),
        ],
      ),
    );
  }

  Widget _buildFeaturedNewsCarousel() {
    return SizedBox(
      height: 280,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: featuredNews.length,
        itemBuilder: (context, index) {
          return _buildFeaturedNewsCard(featuredNews[index]);
        },
      ),
    );
  }

  Widget _buildFeaturedNewsCard(NewsArticle article) {
    return Container(
      width: 320,
      margin: const EdgeInsets.only(right: 16),
      child: Stack(
        children: [
          // Image placeholder
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF2A2A2A),
              borderRadius: BorderRadius.circular(16),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                color: const Color(0xFF3A3A3A),
                child: Image.asset(article.imageUrl, fit: BoxFit.cover),
              ),
            ),
          ),
          // Gradient overlay
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black.withOpacity(0.8)],
              ),
            ),
          ),
          // Content
          Positioned(
            left: 16,
            right: 16,
            bottom: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: article.tags.map((tag) {
                    return Container(
                      margin: const EdgeInsets.only(right: 8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: Colors.grey.shade700,
                          width: 1,
                        ),
                      ),
                      child: Text(
                        tag,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 12),
                Text(
                  article.timeAgo,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
                const SizedBox(height: 8),
                Text(
                  article.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    height: 1.3,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNewsList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: newsList.length,
      itemBuilder: (context, index) {
        return _buildNewsListItem(newsList[index]);
      },
    );
  }

  Widget _buildNewsListItem(NewsArticle article) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Thumbnail
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: const Color(0xFF2A2A2A),
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                color: const Color(0xFF3A3A3A),
                child: Image.asset(article.imageUrl, fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(width: 16),
          // Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  article.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.4,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Text(
                  article.timeAgo,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
                const SizedBox(height: 8),
                Row(
                  children: article.tags.map((tag) {
                    return Container(
                      margin: const EdgeInsets.only(right: 8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: Colors.grey.shade700,
                          width: 1,
                        ),
                      ),
                      child: Text(
                        tag,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NewsArticle {
  final String title;
  final String imageUrl;
  final List<String> tags;
  final String timeAgo;
  final bool isLarge;

  NewsArticle({
    required this.title,
    required this.imageUrl,
    required this.tags,
    required this.timeAgo,
    required this.isLarge,
  });
}
