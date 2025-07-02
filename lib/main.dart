import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

Locale locale = Locale('en', 'US');

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  locale = WidgetsBinding.instance.platformDispatcher.locale;
  print(locale);
  runApp(
    GetMaterialApp(
      // locale: locale,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
