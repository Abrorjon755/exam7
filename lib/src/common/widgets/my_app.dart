import 'package:exam7/src/common/constants/constants.dart';
import 'package:exam7/src/common/style/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../../main.dart';
import '../../features/home/screen/home_screen.dart';
import '../l10n/generated/l10n.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  Locale locale = const Locale("en");
  bool theme = true;

  void getLocale() {
    locale = switch (shp.getString(Constants.locale)) {
      "en" => const Locale("en"),
      "ru" => const Locale("ru"),
      _ => const Locale("en"),
    };
    setState(() {});
  }

  void getTheme() {
    theme = shp.getBool(Constants.theme) ?? true;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getLocale();
    getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: locale,
      supportedLocales: const [
        Locale('en'),
        Locale('ru'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        S.delegate,
      ],
      theme: theme ? AppTheme.light : AppTheme.dark,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
