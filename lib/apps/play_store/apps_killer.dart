import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portofolio/apps/play_store/pop_menu_app_bar.dart';
import 'package:portofolio/apps/text_animation.dart';
import 'package:portofolio/apps/thumbnail_details.dart';
import 'package:url_launcher/url_launcher.dart';

class AppsKiller extends StatelessWidget {
  AppsKiller({super.key});
  final TextAnimation _textAnimation = Get.find();
  final text1 =
      '''Stop Unnecessary Apps: With just one tap, you can easily stop apps that are not in use.  
Monitor Mode: This feature allows you to monitor RAM usage in real-time, providing insights into which apps are consuming a lot of memory and need more attention.  
Intuitive User Interface: The simple and user-friendly design makes navigation easy, allowing you to quickly access all the features you need.''';

  final text2 =
      '''ROOT MODE: Root access is required to fully utilize all features.  
ADB MODE: ADB must be enabled on port 5555 to access core features.  
NORMAL MODE: Accessibility permissions are required to run the basic functionalities of the application.''';

  final ScrollController _scroller = ScrollController();

  void initScroller() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scroller.jumpTo(300);
    });
  }

  @override
  Widget build(BuildContext context) {
    // return Container();
    initScroller();
    return Obx(() {
      final color1 = _textAnimation.color1.value;
      final color2 = _textAnimation.color2.value;
      final color3 = _textAnimation.color3.value;
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: Row(
            children: [
              TextButton.icon(
                  icon: FaIcon(
                    FontAwesomeIcons.googlePlay,
                    color: Colors.blue,
                  ),
                  onPressed: () async {
                    final url = Uri.parse(
                        'https://play.google.com/store/apps/details?id=com.BNeoTech.AppsKiller');
                    await launchUrl(url);
                  },
                  label: Text(
                    'Apps Killer',
                    style: TextStyle(color: Colors.white),
                  )),
              Spacer(),
              PopMenuAppBar(),
            ],
          ),
        ),
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
                      child: Center(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 4),
                            child: SizedBox(
                              width: 400,
                              child: SingleChildScrollView(
                                controller: _scroller,
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ThumbnailDetails(
                                        name: 'assets/killer1.png'),
                                    ThumbnailDetails(
                                        name: 'assets/killer2.png'),
                                    ThumbnailDetails(
                                        name: 'assets/killer3.png'),
                                    ThumbnailDetails(
                                        name: 'assets/killer4.png'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                              begin: Alignment(
                                  _textAnimation.colorOffset.value, 0),
                              end: Alignment(
                                  _textAnimation.colorOffset.value + 0.5, 0),
                              colors: [
                                color1,
                                color2,
                                color3
                              ]).createShader(bounds);
                        },
                        child: Text(
                          textAlign: TextAlign.center,
                          'Apps Killer: Stop Unnecessary Apps!',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
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
                            '•  $t',
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
                      "   Apps Killer is the perfect solution for users who want to stop running apps, whether they are visible or hidden. With this application, you can better manage your device's functionality.",
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
                            '•  $t',
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
    });
  }
}
