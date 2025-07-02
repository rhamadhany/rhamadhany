import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'app/routes/app_pages.dart';

Locale locale = Locale('en', 'US');

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  locale = WidgetsBinding.instance.platformDispatcher.locale;
  initializeDateFormatting();
  runApp(
    GetMaterialApp(
      // locale: locale,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: themeData,
    ),
  );
}

ThemeData get themeData {
  return ThemeData(
      scaffoldBackgroundColor: Colors.black,
      colorScheme: ColorScheme.dark(
        surface: Colors.black,
        onSurface: Colors.white,
      ),
      textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white)));
}
