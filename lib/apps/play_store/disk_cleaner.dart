import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portofolio/apps/text_animation.dart';
import 'package:portofolio/apps/thumbnail_details.dart';
import 'package:url_launcher/url_launcher.dart';

class DiskCleaner extends StatelessWidget {
  DiskCleaner({super.key});
  final TextAnimation _textAnimation = Get.find();
  final ScrollController _scroller = ScrollController();
  final text1 = r'''Audio: Identify and delete unnecessary audio files.
Video: Delete unnecessary videos.
Photo: Delete duplicate or unwanted photos.
Text: Delete unnecessary text documents.
Archive: Removes unnecessary archive files such as .zip and .rar.
Documents: Removes unnecessary document files.
Empty Files: Removes files that are 0 bytes in size.
Empty Folders: Removes folders that do not contain any files.''';

  void initScroller() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scroller.jumpTo(350);
    });
  }

  @override
  Widget build(BuildContext context) {
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
              // const Text('Movin Player'),
              TextButton.icon(
                  icon: FaIcon(
                    FontAwesomeIcons.googlePlay,
                    color: Colors.blue,
                  ),
                  onPressed: () async {
                    final url = Uri.parse(
                        'https://play.google.com/store/apps/details?id=com.BNeoTech.diskcleaner');
                    await launchUrl(url);
                  },
                  label: Text(
                    'Disk Cleaner',
                    style: TextStyle(color: Colors.white),
                  )),
              Spacer(),
              TextButton(
                  onPressed: () {
                    Get.toNamed('/');
                  },
                  child: Text(
                    'HOME',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
              TextButton(
                  onPressed: () {
                    Get.toNamed('/project');
                  },
                  child: Text(
                    'PROJECT',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
              TextButton(
                  onPressed: () {
                    Get.toNamed('/contact');
                  },
                  child: Text(
                    'CONTACT',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
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
                    Center(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4),
                          child: SizedBox(
                            width: 400,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              controller: _scroller,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ThumbnailDetails(name: 'assets/disk1.png'),
                                  ThumbnailDetails(name: 'assets/disk2.png'),
                                  ThumbnailDetails(name: 'assets/disk3.png'),
                                  ThumbnailDetails(name: 'assets/disk4.png'),
                                  ThumbnailDetails(name: 'assets/disk5.png'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              style: TextStyle(color: Colors.white),
                              children: [
                                WidgetSpan(
                                  child: ShaderMask(
                                    shaderCallback: (Rect bounds) {
                                      return LinearGradient(
                                          begin: Alignment(
                                              _textAnimation.colorOffset.value,
                                              0),
                                          end: Alignment(
                                              _textAnimation.colorOffset.value +
                                                  0.5,
                                              0),
                                          colors: [
                                            color1,
                                            color2,
                                            color3
                                          ]).createShader(bounds);
                                    },
                                    child: Text(
                                      'Disk Cleaner: solution designed to clean up digital junk on your device!',
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                TextSpan(
                                    text:
                                        '\nvariety of scanning features that can detect and delete unnecessary files such as audio, video, photos, text, archives documents, empty files, and empty folders.',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold))
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
                            '•  $t',
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
                      '     Users can choose specific folders to scan. This feature provides flexibility in cleaning the device.',
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
                      '     The folder exclusion feature allows users to exclude certain folders from the scanning process, protecting important data from being accidentally deleted.',
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
                          color: Colors.white, fontWeight: FontWeight.w600),
                    )
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
