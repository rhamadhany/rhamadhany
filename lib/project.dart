import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
  @override
  Widget build(BuildContext context) {
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
            // TextButton(
            //     onPressed: () {
            //       Get.toNamed('/');
            //     },
            //     child: Text(
            //       'HOME',
            //       style: TextStyle(color: Colors.white),
            //     )),
            // TextButton(
            //     onPressed: () {
            //       Get.toNamed('/contact');
            //     },
            //     child: Text(
            //       'CONTACT',
            //       style: TextStyle(color: Colors.white),
            //     ))
          ],
        ),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(color: Colors.black),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: const Color.fromARGB(255, 42, 42, 42),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          color: Colors.purple,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            // child:
                            child: Text(
                              'Play Store',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 28),
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ...mapThumbnailPlayStore.map((m) {
                                return thumbnailApps(m['logo']!, m['apps']!);
                              }),
                            ],
                          ),
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
                children: [],
              )
            ],
          ),
        ),
      ),
    );
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
