import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portofolio/random_chars.dart';

class HalamanProject extends StatelessWidget {
  HalamanProject({super.key});
  final mapThumbnailPlayStore = [
    {
      'apps': 'Movin Player',
      'logo': 'assets/movin.png',
    },
    {
      'apps': 'Disk Cleaner',
      'logo': 'assets/disk_cleaner.png',
    },
    {
      'apps': 'Media Compression',
      'logo': 'assets/compression.png',
    },
    {
      'apps': 'Apps Killer',
      'logo': 'assets/apps_killer.png',
    },
  ];

  final color1 = const Color.fromARGB(255, 33, 149, 244).obs;
  final color2 = const Color.fromARGB(255, 100, 241, 105).obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Row(
          children: [
            Icon(Icons.work),
            SizedBox(
              width: 10,
            ),
            Text(
              'PROJECT',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Spacer(),
            PopupMenuButton(
                icon: Icon(Icons.menu),
                itemBuilder: (_) => [
                      PopupMenuItem(
                          child: ListTile(
                        title: Text('HOME'),
                        leading: Icon(Icons.home),
                        onTap: () {
                          Get.toNamed('/');
                        },
                      )),
                      PopupMenuItem(
                          child: ListTile(
                        leading: Icon(Icons.contact_mail),
                        onTap: () {
                          Get.toNamed('/contact');
                        },
                        title: Text('CONTACT'),
                      ))
                    ])
          ],
        ),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(color: Colors.black),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            RandomChars(),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: Get.width * 0.8,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(color: Colors.grey.withAlpha(99)),
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Card(
                                    color: Colors.purple,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Play Store',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                            fontSize: 28),
                                      ),
                                    ),
                                  ),
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ...mapThumbnailPlayStore.map((m) {
                                        return thumbnailApps(
                                            m['logo']!, m['apps']!);
                                      }),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: Get.width * 0.8,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(color: Colors.grey.withAlpha(99)),
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Card(
                                    color: Colors.red,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Personal',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                            fontSize: 28),
                                      ),
                                    ),
                                  ),
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [thumbnailApps('', 'Devhooking')],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  thumbnailApps(String assets, String title) {
    return InkWell(
        onTap: () {
          tapFunction(title);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Obx(() {
            return Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withAlpha(50),
                        blurRadius: 50,
                        spreadRadius: 50)
                  ],
                  borderRadius: BorderRadius.circular(10),
                  gradient:
                      LinearGradient(colors: [color1.value, color2.value])),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    if (assets != '')
                      Image.asset(
                        assets,
                        width: 150,
                        height: 150,
                      ),
                    if (assets == '')
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: FaIcon(
                          FontAwesomeIcons.flutter,
                          color: Colors.white,
                          size: 140,
                        ),
                      ),
                    Text(
                      title,
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ],
                ),
              ),
            );
          }),
        ));
  }

  void tapFunction(String title) {
    switch (title) {
      case 'Movin Player':
        Get.toNamed('/movin');
        break;
      case 'Disk Cleaner':
        Get.toNamed('/disk');
        break;
      case 'Media Compression':
        Get.toNamed('/compression');
        break;
      case 'Apps Killer':
        Get.toNamed('/killer');
        break;
    }
  }
}
