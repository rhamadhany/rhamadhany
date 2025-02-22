import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/projek/apps/animation_shader.dart';
import 'package:portofolio/projek/apps/play_store/app_bar_apps.dart';

import 'package:portofolio/projek/apps/thumbnail_details.dart';

class DiskCleaner extends StatelessWidget {
  const DiskCleaner({super.key});

  final text1 = r'''Audio: Identify and delete unnecessary audio files.
Video: Delete unnecessary videos.
Photo: Delete duplicate or unwanted photos.
Text: Delete unnecessary text documents.
Archive: Removes unnecessary archive files such as .zip and .rar.
Documents: Removes unnecessary document files.
Empty Files: Removes files that are 0 bytes in size.
Empty Folders: Removes folders that do not contain any files.''';

  static final thumbnail = <String>[
    'assets/disk1.png',
    'assets/disk2.png',
    'assets/disk3.png',
    'assets/disk4.png',
    'assets/disk5.png',
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
                  'https://play.google.com/store/apps/details?id=com.BNeoTech.diskcleaner',
              label: 'Disk Cleaner')),
      body: SizedBox(
        width: Get.width,
        child: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListThumbnailApps(list: thumbnail),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            style: TextStyle(color: Colors.white),
                            children: [
                              WidgetSpan(
                                  child: AnimationShader(
                                      text:
                                          'Disk Cleaner: solution designed to clean up digital junk on your device!')),
                              TextSpan(
                                  text:
                                      '\nvariety of scanning features that can detect and delete unnecessary files such as audio, video, photos, text, archives documents, empty files, and empty folders.',
                                  style: TextStyle(fontWeight: FontWeight.bold))
                            ])),
                  ),
                  Text(
                    'File Scan:',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  ...text1.split('\n').map((t) {
                    return Row(
                      children: [
                        Text(
                          '• $t',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    );
                  }),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Folder Selection:',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ' Users can choose specific folders to scan. This feature provides flexibility in cleaning the device.',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Folder Exclusion:',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ' The folder exclusion feature allows users to exclude certain folders from the scanning process, protecting important data from being accidentally deleted.',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    '''Disk Cleaner comes with a user-friendly interface, making it easy to operate without any technical expertise. The scanning and cleaning process is done quickly and efficiently. In addition, the app comes with a reporting feature that provides a clear picture of the files and folders that have been deleted.
                With Disk Cleaner, keeping your device clean and efficient has become easier. This app helps save storage space and contributes to better device performance, making it an essential tool for anyone who wants to keep their device free from unwanted files.''',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
