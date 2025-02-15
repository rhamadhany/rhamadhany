import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/apps/text_animation.dart';

class HalamanProject extends StatelessWidget {
  HalamanProject({super.key});
  final mapThumbnailPlayStore = [
    {
      'apps': 'Movin Player',
      'logo': 'movin.png',
    },
    {
      'apps': 'Disk Cleaner',
      'logo': 'disk_cleaner.png',
    },
    {
      'apps': 'Compression',
      'logo': 'compression.png',
    },
    {
      'apps': 'Apps Killer',
      'logo': 'apps_killer.png',
    },
  ];
  final TextAnimation _textAnimation = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final color1 = _textAnimation.color1.value;
      final color2 = _textAnimation.color2.value;
      // final opacity = _textAnimation.opacity.value;
      final color3 = _textAnimation.color3.value;
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: Row(
            children: [
              Text(
                'PROJECT',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Spacer(),
              TextButton(
                  onPressed: () {
                    Get.toNamed('/');
                  },
                  child: Text(
                    'HOME',
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () {
                    Get.toNamed('/contact');
                  },
                  child: Text(
                    'CONTACT',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: const Color.fromARGB(255, 42, 42, 42),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ShaderMask(
                              shaderCallback: (Rect bounds) {
                                return LinearGradient(
                                        stops: [0.3, 0.5, 0.8],
                                        colors: [color1, color2, color3])
                                    .createShader(bounds);
                              },
                              child: Text(
                                'Play Store',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 35),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ...mapThumbnailPlayStore.map((m) {
                                    return thumbnailApps(
                                        m['logo']!, m['apps']!);
                                  })
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: Get.width,
                        child: Text(
                          'Personal',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    thumbnailApps(
                      'movin.png',
                      'Apps Killer',
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }

  thumbnailApps(String assets, String title) {
    return InkWell(
      onTap: () {
        tapFunction(title);
      },
      child: Card(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                assets,
                width: 150,
                height: 150,
              ),
              Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void tapFunction(String title) {
    switch (title) {
      case 'Movin Player':
        Get.toNamed('/movin');
    }
  }
}
