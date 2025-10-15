
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_app/core/routing/app_router.dart';
import 'package:football_app/core/routing/routes.dart';
import 'package:football_app/core/theme/colors.dart';
import 'package:football_app/generated/l10n.dart';

class ScoreLiveApp extends StatefulWidget {
  final AppRouter appRouter;
  final Locale initialLocale;

  const ScoreLiveApp({
    super.key,
    required this.appRouter,
    required this.initialLocale,
  });

  @override
  State<ScoreLiveApp> createState() => ScoreLiveAppState();
}

class ScoreLiveAppState extends State<ScoreLiveApp> {
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
