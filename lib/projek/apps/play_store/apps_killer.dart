import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/projek/apps/animation_shader.dart';
import 'package:portofolio/projek/apps/play_store/app_bar_apps.dart';
import 'package:portofolio/projek/apps/thumbnail_details.dart';

class AppsKiller extends StatelessWidget {
  const AppsKiller({super.key});

  final text1 =
      '''Stop Unnecessary Apps: With just one tap, you can easily stop apps that are not in use. 
Monitor Mode: This feature allows you to monitor RAM usage in real-time, providing insights into which apps are consuming a lot of memory and need more attention. 
Intuitive User Interface: The simple and user-friendly design makes navigation easy, allowing you to quickly access all the features you need.''';

  final text2 =
      '''ROOT MODE: Root access is required to fully utilize all features. 
ADB MODE: ADB must be enabled on port 5555 to access core features. 
NORMAL MODE: Accessibility permissions are required to run the basic functionalities of the application.''';

  static final thumbnail = <String>[
    'assets/killer1.png',
    'assets/killer2.png',
    'assets/killer3.png',
    'assets/killer4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: AppBarApps(
              link:
                  'https://play.google.com/store/apps/details?id=com.BNeoTech.AppsKiller',
              label: 'Apps Killer')),
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListThumbnailApps(list: thumbnail),
                  ),
                  Center(
                    child: AnimationShader(
                      text: 'Apps Killer: Stop Unnecessary Apps!',
                    ),
                  ),
                  Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      'Apps Killer is an innovative application designed specifically for Android users who want to manage and stop apps running in the background. By using Apps Killer, you can ensure a smoother and more responsive user experience.',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    textAlign: TextAlign.start,
                    'Main Features:',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  ...text1.split('\n').map((t) {
                    return Row(
                      children: [
                        Expanded(
                            child: Text(
                          '• $t',
                          style: TextStyle(color: Colors.white),
                        ))
                      ],
                    );
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Why Choose Apps Killer?',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    " Apps Killer is the perfect solution for users who want to stop running apps, whether they are visible or hidden. With this application, you can better manage your device's functionality.",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Important Notes:',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  ...text2.split('\n').map((t) {
                    return Row(
                      children: [
                        Expanded(
                            child: Text(
                          '• $t',
                          style: TextStyle(color: Colors.white),
                        )),
                      ],
                    );
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      'With Apps Killer, you have a powerful tool at your fingertips to stop unnecessary apps on your Android device. Download now and experience the difference!',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
