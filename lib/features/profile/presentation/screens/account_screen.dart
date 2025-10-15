// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_app/core/helpers/number_to_current_language.dart';
import 'package:football_app/core/helpers/shared_prefs_helper.dart';
import 'package:football_app/core/theme/colors.dart';
import 'package:football_app/features/profile/presentation/bloc/bloc/account_bloc.dart';
import 'package:football_app/generated/l10n.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool notificationsEnabled = true;
  bool darkThemeEnabled = true;
  bool generalExpanded = true;
  bool otherExpanded = false;
  late String selectedLanguage;

  @override
  void initState() {
    super.initState();
    selectedLanguage = SharedPrefsHelper.getLocale() ?? 'en';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  S.current.my_account,
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Center(child: _buildProfileSection()),
              const SizedBox(height: 32),
              _buildFavoritesSection(),
              const SizedBox(height: 32),
              _buildGeneralSection(),
              const SizedBox(height: 24),
              _buildOtherSection(),
              const SizedBox(height: 32),
              _buildLogoutButton(),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileSection() {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: AppColors.cardColor,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.person_outline,
            size: 50,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          S.current.developer_name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildFavoritesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            S.current.favorites,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppColors.cardColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildFavoriteItem(
                S.current.competitions,
                '2'.toCurrentNumberLanguage(context) ?? '2',
              ),
              Container(width: 1, height: 40, color: Colors.grey.shade800),
              _buildFavoriteItem(
                S.current.team,
                '4'.toCurrentNumberLanguage(context) ?? '4',
              ),
              Container(width: 1, height: 40, color: Colors.grey.shade800),
              _buildFavoriteItem(
                S.current.players,
                '8'.toCurrentNumberLanguage(context) ?? '8',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFavoriteItem(String label, String count) {
    return Column(
      children: [
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 14)),
        const SizedBox(height: 8),
        Text(
          count,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildGeneralSection() {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              generalExpanded = !generalExpanded;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  S.current.general,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(
                  generalExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: Colors.white,
                  size: 28,
                ),
              ],
            ),
          ),
        ),
        if (generalExpanded) ...[
          _buildSettingItem(
            S.current.app_notification,
            trailing: Switch(
              value: notificationsEnabled,
              onChanged: (value) {
                setState(() {
                  notificationsEnabled = value;
                });
              },
              activeColor: Colors.white,
              activeTrackColor: const Color(0xFFFF4081),
            ),
          ),
          Divider(
            color: Colors.grey.shade800,
            height: 1,
            indent: 16,
            endIndent: 16,
          ),
          _buildSettingItem(
            S.current.dark_theme,
            trailing: Switch(
              value: darkThemeEnabled,
              onChanged: (value) {
                setState(() {
                  darkThemeEnabled = value;
                });
              },
              activeColor: Colors.white,
              activeTrackColor: const Color(0xFFFF4081),
            ),
          ),
          Divider(
            color: Colors.grey.shade800,
            height: 1,
            indent: 16,
            endIndent: 16,
          ),
          _buildSettingItem(
            'Filter Matches By',
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  S.current.league,
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(width: 8),
                Icon(Icons.chevron_right, color: Colors.grey, size: 24),
              ],
            ),
          ),
          Divider(
            color: Colors.grey.shade800,
            height: 1,
            indent: 16,
            endIndent: 16,
          ),
          _buildLanguageSetting(),
        ],
      ],
    );
  }

  Widget _buildLanguageSetting() {
    return InkWell(
      onTap: () async {
        final accountBloc = context.read<AccountBloc>();

        final result = await showDialog<String>(
          context: context,
          builder: (dialogContext) => AlertDialog(
            backgroundColor: const Color(0xFF2A2A2A),
            title: const Text(
              'Choose Language',
              style: TextStyle(color: Colors.white),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: const Text(
                    'English',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: selectedLanguage == 'en'
                      ? const Icon(Icons.check, color: Color(0xFFFF4081))
                      : const SizedBox(width: 24),
                  onTap: () {
                    Navigator.pop(dialogContext, 'en');
                  },
                ),
                const Divider(color: Colors.grey),
                ListTile(
                  title: const Text(
                    'العربية',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: selectedLanguage == 'ar'
                      ? const Icon(Icons.check, color: Color(0xFFFF4081))
                      : const SizedBox(width: 24),
                  onTap: () {
                    Navigator.pop(dialogContext, 'ar');
                  },
                ),
              ],
            ),
          ),
        );

        // ✅ Handle the result after dialog closes
        if (result != null && result != selectedLanguage) {
          setState(() {
            selectedLanguage = result;
          });
          accountBloc.add(AccountEvent.changeLanguage(result));
        }
      },
      child: _buildSettingItem(
        S.current.language,
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              selectedLanguage == 'ar' ? 'العربية' : 'English',
              style: const TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(width: 8),
            const Icon(Icons.chevron_right, color: Colors.grey, size: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildOtherSection() {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              otherExpanded = !otherExpanded;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  S.current.others,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(
                  otherExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: Colors.white,
                  size: 28,
                ),
              ],
            ),
          ),
        ),
        if (otherExpanded) ...[
          _buildSettingItem(S.current.about),
          Divider(
            color: Colors.grey.shade800,
            height: 1,
            indent: 16,
            endIndent: 16,
          ),
          _buildSettingItem(S.current.privacy_policy),
          Divider(
            color: Colors.grey.shade800,
            height: 1,
            indent: 16,
            endIndent: 16,
          ),
          _buildSettingItem(S.current.terms_and_conditions),
        ],
      ],
    );
  }

  Widget _buildSettingItem(String title, {Widget? trailing}) {
    return InkWell(
      onTap: trailing == null ? () {} : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            if (trailing != null)
              trailing
            else
              const Icon(Icons.chevron_right, color: Colors.grey, size: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildLogoutButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        onPressed: () {
          // Handle logout
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFD32F2F),
          minimumSize: const Size(double.infinity, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          S.current.logout,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
