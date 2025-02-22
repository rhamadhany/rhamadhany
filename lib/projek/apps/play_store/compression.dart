import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/projek/apps/animation_shader.dart';
import 'package:portofolio/projek/apps/play_store/app_bar_apps.dart';
import 'package:portofolio/projek/apps/thumbnail_details.dart';

class Compression extends StatelessWidget {
  const Compression({super.key});
  static final thumbnail = <String>[
    'assets/compression1.png',
    'assets/compression2.png',
    'assets/compression3.png',
    'assets/compression4.png',
    'assets/compression5.png',
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
                  'https://play.google.com/store/apps/details?id=com.BNeoTech.compressiontools',
              label: 'Media Compression')),
      body: SizedBox(
        width: Get.width,
        child: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListThumbnailApps(list: thumbnail),
                  AnimationShader(
                    text: 'Media Compression All-In-One',
                  ),
                  Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      'Application designed to simplify the process of compressing various types of media such as audio, video, photo, pdf and video',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
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
                    ' users can change the bitrate and sample rate of audio files, thereby allowing them to optimize the size of audio files without compromising the sound quality',
                    style: TextStyle(
                      color: Colors.white,
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
                    ' users can change the resolution of photos and adjust the compression level, thereby allowing the adjustment of the photo file size.',
                    style: TextStyle(
                      color: Colors.white,
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
                    ' users can adjust the compression level of PDFs, thereby reducing the file size without compromising the quality of the content.',
                    style: TextStyle(
                      color: Colors.white,
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
                    ' users can adjust the frame rate (FPS) and compression level for videos, thereby allowing users to optimize the size of video files while maintaining the quality of the video',
                    style: TextStyle(
                      color: Colors.white,
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
  }
}
