import 'package:flutter/material.dart';
import 'package:portofolio/app/modules/home/pageBuilder/routes/subtitle/subtitle_katalog.dart';

class PagesBuilderRoutes {
  static final assetsName = [
    "bnv2ray",
    "apps_killer",
    "movin",
    "compression",
    "disk",
    "ultrasonic",
    "vdisk"
  ];

  static final listTitles = [
    "BNVRay",
    "Apps Killer",
    "Movin Player",
    "Media Compression",
    "Disk Cleaner",
    "Ultrasonic Generator",
    "VDisk Android"
  ];

  static String assetsRoutes(index) => "assets/${assetsName[index]}.jpg";

  static String routes(index) => assetsRoutes(index);

  static String title(index) => listTitles[index];

  static Widget subtitle(index) => SubtitleKatalog(index: index);
}

enum AppsKatalog {
  bnv2ray,
  appskiller,
  movinplayer,
  compression,
  disk,
  ultrasonic,
  vdisk
}
