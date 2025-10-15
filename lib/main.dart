import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_app/core/di/dependency_injection.dart';
import 'package:football_app/core/helpers/shared_prefs_helper.dart';
import 'package:football_app/core/routing/app_router.dart';
import 'package:football_app/core/routing/routes.dart';
import 'package:football_app/core/theme/colors.dart';
import 'package:football_app/generated/l10n.dart';

final GlobalKey<_ScoreLiveAppState> appKey = GlobalKey<_ScoreLiveAppState>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefsHelper.init();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  final savedLocaleCode = await SharedPrefsHelper.getLocale() ?? 'en';
  final savedLocale = Locale(savedLocaleCode);
  runApp(
    ScoreLiveApp(
      key: appKey,
      appRouter: AppRouter(),
      initialLocale: savedLocale,
    ),
  );
}

class ScoreLiveApp extends StatefulWidget {
  final AppRouter appRouter;
  final Locale initialLocale;

  const ScoreLiveApp({
    super.key,
    required this.appRouter,
    required this.initialLocale,
  });

  @override
  State<ScoreLiveApp> createState() => _ScoreLiveAppState();
}

class _ScoreLiveAppState extends State<ScoreLiveApp> {
  late Locale _locale;

  @override
  void initState() {
    super.initState();
    _locale = widget.initialLocale;
  }

  void setLocale(Locale locale) {
    setState(() => _locale = locale);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: AppColors.backgroundColor,
            primaryColor: AppColors.primaryColor,
          ),
          onGenerateRoute: widget.appRouter.generateRoute,
          initialRoute: Routes.mainScreen,
          locale: _locale,
          supportedLocales: S.delegate.supportedLocales,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
        );
      },
    );
  }
}
