import 'package:flutter/material.dart';
import 'package:portofolio/main.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Text(
        locale.languageCode == 'id'
            ? "Saya adalah seorang junior Flutter developer. Saya telah mengembangkan berbagai aplikasi menggunakan Flutter, baik untuk kebutuhan pribadi maupun untuk dipublikasikan. Beberapa aplikasi yang telah saya selesaikan dapat ditemukan di halaman Play Store. Saya sangat bersemangat untuk terus meningkatkan kemampuan dan keterampilan teknis saya."
            : "I am a junior Flutter developer. I have built various applications using Flutter, both for personal use and for publication. Some of the apps I’ve completed are available on the Play Store. I am highly motivated to continue improving my technical skills and knowledge.",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
