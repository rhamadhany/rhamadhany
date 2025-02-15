import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portofolio/apps/play_store/pop_menu_app_bar.dart';
import 'package:portofolio/apps/text_animation.dart';
import 'package:portofolio/apps/thumbnail_details.dart';
import 'package:url_launcher/url_launcher.dart';

class MovinPlayer extends StatelessWidget {
  const MovinPlayer({super.key});

  @override
  Widget build(BuildContext context) {
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
                      'https://play.google.com/store/apps/details?id=com.BNeoTech.MovinPlayer');
                  await launchUrl(url);
                },
                label: Text(
                  'Movin Player',
                  style: TextStyle(color: Colors.white),
                )),
            Spacer(),
            PopMenuAppBar(),
          ],
        ),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(color: Colors.black),
        child: TextApps(),
      ),
    );
  }
}

class TextApps extends StatelessWidget {
  TextApps({super.key});
  final ScrollController _scroller = ScrollController();

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

  final TextAnimation _textAnimation = Get.find();

  void initialSroll() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scroller.jumpTo(350);
    });
  }

  @override
  Widget build(BuildContext context) {
    initialSroll();
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 8.0),
                      child: SizedBox(
                        width: 400,
                        child: SingleChildScrollView(
                          controller: _scroller,
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ThumbnailDetails(
                                name: 'assets/movin1.png',
                              ),
                              ThumbnailDetails(
                                name: 'assets/movin2.png',
                              ),
                              ThumbnailDetails(
                                name: 'assets/movin3.png',
                              ),
                              ThumbnailDetails(
                                name: 'assets/movin4.png',
                              ),
                              ThumbnailDetails(
                                name: 'assets/movin5.png',
                              ),
                              ThumbnailDetails(
                                name: 'assets/movin6.png',
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _buildAnimatedHeader(),
              ),
              const SizedBox(height: 10),
              _buildFeatureList(),
              const SizedBox(height: 10),
              _buildFooterText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedHeader() {
    return Obx(() {
      final color1 = _textAnimation.color1.value;
      final color2 = _textAnimation.color2.value;
      // final opacity = _textAnimation.opacity.value;
      final color3 = _textAnimation.color3.value;
      return Column(
        children: [
          ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                stops: const [0.3, 0.5, 0.7],
                begin: Alignment(_textAnimation.colorOffset.value, 0),
                end: Alignment(_textAnimation.colorOffset.value + 0.5, 0),
                colors: [
                  color1,
                  // _textAnimation.color2.value,
                  color2,
                  color3,
                ],
                tileMode: TileMode.clamp,
              ).createShader(bounds);
            },
            child: Text(
              'Movin Player: Audio and Video Player with Browser Support!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  // height: 1.3,
                  color: Colors.white),
            ),
          ),
          Text(
            r"""Movin Player is a multifunctional video and audio player application designed to deliver a comprehensive and flexible viewing experience. With Movin Player, you can easily search and play videos and audio from various sources.""",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      );
    });
  }

  Widget _buildFeatureList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle('Key Features:'),
        ..._buildBulletPoints(text1),
        const SizedBox(height: 20),
        _buildSectionTitle('Advantages of Movin Player'),
        ..._buildBulletPoints(text2),
      ],
    );
  }

  Widget _buildSectionTitle(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  List<Widget> _buildBulletPoints(String text) {
    return text.split('\n').map((point) {
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
    }).toList();
  }

  Widget _buildFooterText() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Text(
        r'''Movin Player is continuously updated with new features and improvements to ensure users always have access to cutting-edge video and audio playback technology!''',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      ),
    );
  }
}
