// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Youssef Fathy`
  String get developer_name {
    return Intl.message(
      'Youssef Fathy',
      name: 'developer_name',
      desc: '',
      args: [],
    );
  }

  /// `ScoreElite`
  String get app_name {
    return Intl.message('ScoreElite', name: 'app_name', desc: '', args: []);
  }

  /// `Live Now`
  String get live_now {
    return Intl.message('Live Now', name: 'live_now', desc: '', args: []);
  }

  /// `See More`
  String get see_more {
    return Intl.message('See More', name: 'see_more', desc: '', args: []);
  }

  /// `Description`
  String get description {
    return Intl.message('Description', name: 'description', desc: '', args: []);
  }

  /// `Details`
  String get details {
    return Intl.message('Details', name: 'details', desc: '', args: []);
  }

  /// `Score`
  String get score {
    return Intl.message('Score', name: 'score', desc: '', args: []);
  }

  /// `Home`
  String get home_page {
    return Intl.message('Home', name: 'home_page', desc: '', args: []);
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Away`
  String get away {
    return Intl.message('Away', name: 'away', desc: '', args: []);
  }

  /// `Time`
  String get time {
    return Intl.message('Time', name: 'time', desc: '', args: []);
  }

  /// `Date`
  String get date {
    return Intl.message('Date', name: 'date', desc: '', args: []);
  }

  /// `Stadium`
  String get stadium {
    return Intl.message('Stadium', name: 'stadium', desc: '', args: []);
  }

  /// `Team`
  String get team {
    return Intl.message('Team', name: 'team', desc: '', args: []);
  }

  /// `League`
  String get league {
    return Intl.message('League', name: 'league', desc: '', args: []);
  }

  /// `Season`
  String get season {
    return Intl.message('Season', name: 'season', desc: '', args: []);
  }

  /// `Season Type`
  String get season_type {
    return Intl.message('Season Type', name: 'season_type', desc: '', args: []);
  }

  /// `Season Year`
  String get season_year {
    return Intl.message('Season Year', name: 'season_year', desc: '', args: []);
  }

  /// `Season Month`
  String get season_month {
    return Intl.message(
      'Season Month',
      name: 'season_month',
      desc: '',
      args: [],
    );
  }

  /// `Season Day`
  String get season_day {
    return Intl.message('Season Day', name: 'season_day', desc: '', args: []);
  }

  /// `Competition`
  String get competition {
    return Intl.message('Competition', name: 'competition', desc: '', args: []);
  }

  /// `News`
  String get news {
    return Intl.message('News', name: 'news', desc: '', args: []);
  }

  /// `Account`
  String get account {
    return Intl.message('Account', name: 'account', desc: '', args: []);
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  /// `Favorites`
  String get favorites {
    return Intl.message('Favorites', name: 'favorites', desc: '', args: []);
  }

  /// `Upcoming`
  String get upcoming {
    return Intl.message('Upcoming', name: 'upcoming', desc: '', args: []);
  }

  /// `Browse Competitions`
  String get browse_competitions {
    return Intl.message(
      'Browse Competitions',
      name: 'browse_competitions',
      desc: '',
      args: [],
    );
  }

  /// `TOP COMPETITIONS`
  String get top_competitions {
    return Intl.message(
      'TOP COMPETITIONS',
      name: 'top_competitions',
      desc: '',
      args: [],
    );
  }

  /// `Latest`
  String get latest {
    return Intl.message('Latest', name: 'latest', desc: '', args: []);
  }

  /// `Today`
  String get today {
    return Intl.message('Today', name: 'today', desc: '', args: []);
  }

  /// `Yesterday`
  String get yesterday {
    return Intl.message('Yesterday', name: 'yesterday', desc: '', args: []);
  }

  /// `Tomorrow`
  String get tomorrow {
    return Intl.message('Tomorrow', name: 'tomorrow', desc: '', args: []);
  }

  /// `This Week`
  String get this_week {
    return Intl.message('This Week', name: 'this_week', desc: '', args: []);
  }

  /// `Next Week`
  String get next_week {
    return Intl.message('Next Week', name: 'next_week', desc: '', args: []);
  }

  /// `This Month`
  String get this_month {
    return Intl.message('This Month', name: 'this_month', desc: '', args: []);
  }

  /// `Next Month`
  String get next_month {
    return Intl.message('Next Month', name: 'next_month', desc: '', args: []);
  }

  /// `This Year`
  String get this_year {
    return Intl.message('This Year', name: 'this_year', desc: '', args: []);
  }

  /// `Next Year`
  String get next_year {
    return Intl.message('Next Year', name: 'next_year', desc: '', args: []);
  }

  /// `Hours Ago`
  String get hours_ago {
    return Intl.message('Hours Ago', name: 'hours_ago', desc: '', args: []);
  }

  /// `Minutes Ago`
  String get minutes_ago {
    return Intl.message('Minutes Ago', name: 'minutes_ago', desc: '', args: []);
  }

  /// `Seconds Ago`
  String get seconds_ago {
    return Intl.message('Seconds Ago', name: 'seconds_ago', desc: '', args: []);
  }

  /// `Hour Ago`
  String get hour_ago {
    return Intl.message('Hour Ago', name: 'hour_ago', desc: '', args: []);
  }

  /// `Minute Ago`
  String get minute_ago {
    return Intl.message('Minute Ago', name: 'minute_ago', desc: '', args: []);
  }

  /// `Second Ago`
  String get second_ago {
    return Intl.message('Second Ago', name: 'second_ago', desc: '', args: []);
  }

  /// `Hours From Now`
  String get hours_from_now {
    return Intl.message(
      'Hours From Now',
      name: 'hours_from_now',
      desc: '',
      args: [],
    );
  }

  /// `Minutes From Now`
  String get minutes_from_now {
    return Intl.message(
      'Minutes From Now',
      name: 'minutes_from_now',
      desc: '',
      args: [],
    );
  }

  /// `Premier League`
  String get premier_league {
    return Intl.message(
      'Premier League',
      name: 'premier_league',
      desc: '',
      args: [],
    );
  }

  /// `Champions League`
  String get champions_league {
    return Intl.message(
      'Champions League',
      name: 'champions_league',
      desc: '',
      args: [],
    );
  }

  /// `Europa League`
  String get europa_league {
    return Intl.message(
      'Europa League',
      name: 'europa_league',
      desc: '',
      args: [],
    );
  }

  /// `Europa Confederation Cup`
  String get europa_confederation_cup {
    return Intl.message(
      'Europa Confederation Cup',
      name: 'europa_confederation_cup',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get general {
    return Intl.message('General', name: 'general', desc: '', args: []);
  }

  /// `App Notification`
  String get app_notification {
    return Intl.message(
      'App Notification',
      name: 'app_notification',
      desc: '',
      args: [],
    );
  }

  /// `Dark Theme`
  String get dark_theme {
    return Intl.message('Dark Theme', name: 'dark_theme', desc: '', args: []);
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Others`
  String get others {
    return Intl.message('Others', name: 'others', desc: '', args: []);
  }

  /// `About`
  String get about {
    return Intl.message('About', name: 'about', desc: '', args: []);
  }

  /// `Privacy Policy`
  String get privacy_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions`
  String get terms_and_conditions {
    return Intl.message(
      'Terms & Conditions',
      name: 'terms_and_conditions',
      desc: '',
      args: [],
    );
  }

  /// `Players`
  String get players {
    return Intl.message('Players', name: 'players', desc: '', args: []);
  }

  /// `Competitions`
  String get competitions {
    return Intl.message(
      'Competitions',
      name: 'competitions',
      desc: '',
      args: [],
    );
  }

  /// `My Account`
  String get my_account {
    return Intl.message('My Account', name: 'my_account', desc: '', args: []);
  }

  /// `Region`
  String get region {
    return Intl.message('Region', name: 'region', desc: '', args: []);
  }

  /// `Search for competitions`
  String get search_for_competitions {
    return Intl.message(
      'Search for competitions',
      name: 'search_for_competitions',
      desc: '',
      args: [],
    );
  }

  /// `Search for players`
  String get search_for_players {
    return Intl.message(
      'Search for players',
      name: 'search_for_players',
      desc: '',
      args: [],
    );
  }

  /// `Search for teams`
  String get search_for_teams {
    return Intl.message(
      'Search for teams',
      name: 'search_for_teams',
      desc: '',
      args: [],
    );
  }

  /// `Search for matches`
  String get search_for_matches {
    return Intl.message(
      'Search for matches',
      name: 'search_for_matches',
      desc: '',
      args: [],
    );
  }

  /// `Search for news`
  String get search_for_news {
    return Intl.message(
      'Search for news',
      name: 'search_for_news',
      desc: '',
      args: [],
    );
  }

  /// `Search for photos`
  String get search_for_photos {
    return Intl.message(
      'Search for photos',
      name: 'search_for_photos',
      desc: '',
      args: [],
    );
  }

  /// `Top`
  String get top {
    return Intl.message('Top', name: 'top', desc: '', args: []);
  }

  /// `Stats`
  String get stats {
    return Intl.message('Stats', name: 'stats', desc: '', args: []);
  }

  /// `Standings`
  String get standings {
    return Intl.message('Standings', name: 'standings', desc: '', args: []);
  }

  /// `Results`
  String get results {
    return Intl.message('Results', name: 'results', desc: '', args: []);
  }

  /// `Fixtures`
  String get fixtures {
    return Intl.message('Fixtures', name: 'fixtures', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
