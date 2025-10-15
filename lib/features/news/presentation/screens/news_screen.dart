// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:football_app/core/theme/colors.dart';
import 'package:football_app/features/news/presentation/widgets/featured_news_card.dart';
import 'package:football_app/features/news/presentation/widgets/news_list_item.dart';
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
      tags: [S.current.latest, S.current.premier_league],
      timeAgo: '5 ${S.current.hours_ago}',
      isLarge: false,
    ),
    NewsArticle(
      title: 'Al Hilal Rumoured To Sign Leo Messi With High Offering',
      imageUrl: 'assets/news/messi.png',
      tags: [S.current.latest, 'Transfer'],
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
      backgroundColor: AppColors.backgroundColor,
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
        tabs: [
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
          return FeaturedNewsCard(article: featuredNews[index]);
        },
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
        return NewsListItem(article: newsList[index]);
      },
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
