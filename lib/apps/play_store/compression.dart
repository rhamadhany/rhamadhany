import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portofolio/apps/text_animation.dart';
import 'package:portofolio/apps/thumbnail_details.dart';
import 'package:url_launcher/url_launcher.dart';

class Compression extends StatelessWidget {
  Compression({super.key});
  final TextAnimation _textAnimation = Get.find();
  final ScrollController _scroller = ScrollController();
  void initScroller() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scroller.jumpTo(300);
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
                        'https://play.google.com/store/apps/details?id=com.BNeoTech.compressiontools');
                    await launchUrl(url);
                  },
                  label: Text(
                    'Media Compression',
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
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
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
                                  children: [
                                    ThumbnailDetails(name: 'compression1.png'),
                                    ThumbnailDetails(name: 'compression2.png'),
                                    ThumbnailDetails(name: 'compression3.png'),
                                    ThumbnailDetails(name: 'compression4.png'),
                                    ThumbnailDetails(name: 'compression5.png'),
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
                          'Media Compression All-In-One',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        'application designed to simplify the process of compressing various types of media such as PDFs, photos, audio, and videos',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'PDF Compression:',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '     users can adjust the compression level of PDFs, thereby reducing the file size without compromising the quality of the content.',
                      style: TextStyle(
                        color: Colors.white,
                        // fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Photo Compression:',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '     users can change the resolution of photos and adjust the compression level, thereby allowing the adjustment of the photo file size.',
                      style: TextStyle(
                        color: Colors.white,
                        // fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Audio Compression:',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '     users can change the bitrate and sample rate of audio files, thereby allowing them to optimize the size of audio files without compromising the sound quality',
                      style: TextStyle(
                        color: Colors.white,
                        // fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Video Compression:',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '     users can adjust the frame rate (FPS) and compression level for videos, thereby allowing users to optimize the size of video files while maintaining the quality of the video',
                      style: TextStyle(
                        color: Colors.white,
                        // fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      'The Media Compression All-In-One app is very useful for content creators and users who frequently share media files online, as it helps save storage space and speed up file transfer. In addition, the app is user-friendly and has an intuitive interface, making it easy for users to access its features quickly and effectively.',
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
