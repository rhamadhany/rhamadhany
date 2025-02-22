import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/projek/apps/animation_shader.dart';
import 'package:portofolio/projek/apps/play_store/app_bar_apps.dart';
import 'package:portofolio/projek/apps/thumbnail_details.dart';

class MovinPlayer extends StatelessWidget {
  const MovinPlayer({super.key});
  static final thumbnail = <String>[
    'assets/movin1.png',
    'assets/movin2.png',
    'assets/movin3.png',
    'assets/movin4.png',
    'assets/movin5.png',
    'assets/movin6.png',
  ];

  final text1 = r'''
Access and Play Local Media: Play videos and audio stored on your device, including MP4, MKV, AVI, MP3, and other file formats. 
Stream Video/Audio URLs: Effortlessly play content from platforms like YouTube, TikTok, Instagram, Facebook, Twitter, Reddit, Google Drive, and others via direct links. 
Integrated Browser Support: Browse websites directly within Movin Player without needing a separate browser. 
Wide Format and Codec Support: Compatible with numerous video/audio formats, codecs, and subtitles for seamless playback.
Playback Customization: Adjust aspect ratio, playback speed, and video zoom for optimal viewing.
Customizable Subtitles: Add subtitles from local storage or online sources, with options to modify color, position, synchronization, and language translation.
Intuitive Controls: User-friendly interface with easy navigation and smooth playback controls.
Additional Features: Volume adjustment, full-screen mode, and more''';

  final text2 = r'''
Flexibility: A one-stop solution for all video/audio needs, supporting high-quality playback across diverse and codecs. 
Personalization: Tailor your viewing experience extensive customization options. 
Ease of Use: Simple interface designed for convenience. 
Comprehensive Features: Enhanced functionality to your media experience.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: AppBarApps(
          link:
              'https://play.google.com/store/apps/details?id=com.BNeoTech.MovinPlayer',
          label: 'Movin Player',
        ),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(color: Colors.black),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListThumbnailApps(list: thumbnail),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        AnimationShader(
                            text:
                                'Movin Player: Audio and Video Player with Browser Support!'),
                        Text(
                          r"""Movin Player is a multifunctional video and audio player application designed to deliver a comprehensive and flexible viewing experience. With Movin Player, you can easily search and play videos and audio from various sources.""",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Key Features:',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      ...text1.split('\n').map((point) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 4.0, right: 8.0),
                                child: Text(
                                  '•',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  point.trim(),
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                      const SizedBox(height: 20),
                      Text(
                        'Advantages of Movin Player',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      ...text2.split('\n').map((point) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 4.0, right: 8.0),
                                child: Text(
                                  '•',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  point.trim(),
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      r'''Movin Player is continuously updated with new features and improvements to ensure users always have access to cutting-edge video and audio playback technology!''',
                      textAlign: TextAlign.center,
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
