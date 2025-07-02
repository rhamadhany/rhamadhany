import 'package:url_launcher/url_launcher.dart';

class PlayStoreLink {
  static final List<String> link = [
    "com.BNeoTech.BNV2ray",
    "com.BNeoTech.AppsKiller",
    "com.BNeoTech.MovinPlayer",
    "com.BNeoTech.compressiontools",
    "com.BNeoTech.diskcleaner",
    "com.BNeoTech.ultrasonic_generator",
    "com.BNeoTech.VDiskAndroid"
  ];

  static void onPressed(int index) {
    final expression =
        "https://play.google.com/store/apps/details?id=${link[index]}";
    final uri = Uri.parse(expression);
    launchUrl(uri);
  }
}
