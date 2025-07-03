import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/app/modules/profile/controllers/profile_controller.dart';
import 'package:portofolio/main.dart';

class AboutMe extends GetView<ProfileController> {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: controller.fadeAnimation,
      child: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Text(
          locale.languageCode == 'id'
              ? "Saya adalah seorang junior Flutter developer. Saya telah mengembangkan berbagai aplikasi menggunakan Flutter, baik untuk kebutuhan pribadi maupun untuk dipublikasikan. Beberapa aplikasi yang telah saya selesaikan dapat ditemukan di halaman Play Store. Kebanyakan aplikasi yang saya buat tidak menggunakan server atau Rest API karena saya belum memiliki pengalaman dalam backend, namun jika diberi kesempatan bergabung dengan perusahaan, saya siap untuk belajar dan meningkatkan kemampuan saya, termasuk dalam menggunakan Rest API. Saya berencana untuk terus mengembangkan diri dan memperdalam pengetahuan saya dalam dunia teknologi khususnya pengembangan aplikasi mobile."
              : "I am a junior Flutter developer with experience building various applications using Flutter for both personal use and publication. Some of my completed apps are available on the Play Store. While most of my current projects do not involve backend systems or REST APIs due to limited exposure, I am eager and ready to learn and expand my skills, especially in working with RESTful services if given the opportunity to join a company. I am highly motivated to grow professionally and deepen my understanding of mobile application development.",
          style: GoogleFonts.atma(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
