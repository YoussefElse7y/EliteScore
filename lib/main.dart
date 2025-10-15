import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_app/core/di/dependency_injection.dart';
import 'package:football_app/core/helpers/shared_prefs_helper.dart';
import 'package:football_app/core/routing/app_router.dart';

import 'package:football_app/score_live_app.dart';

final GlobalKey<ScoreLiveAppState> appKey = GlobalKey<ScoreLiveAppState>();


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefsHelper.init();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  final savedLocaleCode =  SharedPrefsHelper.getLocale() ?? 'en';
  final savedLocale = Locale(savedLocaleCode);
  runApp(
    ScoreLiveApp(
      key: appKey,
      appRouter: AppRouter(),
      initialLocale: savedLocale,
    ),
  );
}
