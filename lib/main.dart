import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/apps/personal/devhooking.dart';
import 'package:portofolio/apps/play_store/apps_killer.dart';
import 'package:portofolio/apps/play_store/compression.dart';
import 'package:portofolio/apps/play_store/disk_cleaner.dart';
import 'package:portofolio/apps/play_store/movin_player.dart';
import 'package:portofolio/apps/text_animation.dart';
import 'package:portofolio/beranda.dart';
import 'package:portofolio/contact_form.dart';
import 'package:portofolio/project.dart';

void main() {
  Get.put(TextAnimation());
  runApp(GetMaterialApp(
    // home: Beranda(),
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => Beranda()),
      GetPage(name: '/contact', page: () => ContactForm()),
      GetPage(name: '/project', page: () => HalamanProject()),
      GetPage(name: '/movin', page: () => MovinPlayer()),
      GetPage(name: '/disk', page: () => DiskCleaner()),
      GetPage(name: '/compression', page: () => Compression()),
      GetPage(name: '/killer', page: () => AppsKiller()),
      GetPage(name: '/devhooking', page: () => DevHooking())
    ],
  ));
}
