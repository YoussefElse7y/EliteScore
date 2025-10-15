// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_app/core/helpers/app_assets.dart';
import 'package:football_app/core/theme/colors.dart';
import 'package:football_app/features/competitions/presentation/screens/competitions_screen.dart';
import 'package:football_app/features/home/presentation/screens/home_screen.dart';
import 'package:football_app/features/news/ui/screens/news_screen.dart';
import 'package:football_app/features/profile/presentation/bloc/bloc/account_bloc.dart';
import 'package:football_app/features/profile/presentation/screens/account_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
   late final List<Widget> _screens = [
    const HomeScreen(),
    const CompetitionsScreen(),
    const NewsScreen(),
    // ✅ Wrap only AccountScreen with BlocProvider
    BlocProvider(
      create: (_) => AccountBloc(),
      child: const AccountScreen(),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(
                index: 0,
                filledIcon: AppAssets.homeFilledIcon,
                regularIcon: AppAssets.homeRegularIcon,
                label: 'Home',
              ),
              _buildNavItem(
                index: 1,
                filledIcon: AppAssets.competitionsFilledIcon,
                regularIcon: AppAssets.competitionsRegularIcon,
                label: 'Competition',
              ),
              _buildNavItem(
                index: 2,
                filledIcon: AppAssets.newsFilledIcon,
                regularIcon: AppAssets.newsRegularIcon,
                label: 'News',
              ),
              _buildNavItem(
                index: 3,
                filledIcon: AppAssets.accountFilledIcon,
                regularIcon: AppAssets.accountRegularIcon,
                label: 'Account',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required int index,
    required String filledIcon,
    required String regularIcon,
    required String label,
  }) {
    final isSelected = currentIndex == index;

    return GestureDetector(
      onTap: () => onTap(index),
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              isSelected ? filledIcon : regularIcon,
              width: 24.w,
              height: 24.h,
              color: isSelected ? AppColors.primaryColor : AppColors.greyColor,
              errorBuilder: (context, error, stackTrace) {
                return Icon(
                  _getFallbackIcon(index),
                  color: isSelected
                      ? AppColors.primaryColor
                      : AppColors.greyColor,
                  size: 28,
                );
              },
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color: isSelected
                    ? AppColors.primaryColor
                    : AppColors.greyColor,
                fontSize: 12.sp,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  IconData _getFallbackIcon(int index) {
    switch (index) {
      case 0:
        return Icons.home;
      case 1:
        return Icons.list;
      case 2:
        return Icons.article_outlined;
      case 3:
        return Icons.person_outline;
      default:
        return Icons.home;
    }
  }
}
