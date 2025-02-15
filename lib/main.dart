import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      GetPage(name: '/movin', page: () => MovinPlayer())
    ],
  ));
}
