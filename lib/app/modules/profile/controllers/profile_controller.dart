import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/main.dart';

class ProfileController extends GetxController
    with GetTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeAnimation;
  late Animation<Offset> leftSlideAnimation;
  late Animation<Offset> rightSlideAnimation;
  late AnimationController typingAnimationController;
  late Animation<double> typingAnimation;
  final aboutMe = locale.languageCode == 'id'
      ? "Saya adalah seorang junior Flutter developer. Saya telah mengembangkan berbagai aplikasi menggunakan Flutter, baik untuk kebutuhan pribadi maupun untuk dipublikasikan. Beberapa aplikasi yang telah saya selesaikan dapat ditemukan di halaman Play Store. Kebanyakan aplikasi yang saya buat tidak menggunakan server atau Rest API karena saya belum memiliki pengalaman dalam backend, namun jika diberi kesempatan bergabung dengan perusahaan, saya siap untuk belajar dan meningkatkan kemampuan saya, termasuk dalam menggunakan Rest API. Saya berencana untuk terus mengembangkan diri dan memperdalam pengetahuan saya dalam dunia teknologi khususnya pengembangan aplikasi mobile."
      : "I am a junior Flutter developer with experience building various applications using Flutter for both personal use and publication. Some of my completed apps are available on the Play Store. While most of my current projects do not involve backend systems or REST APIs due to limited exposure, I am eager and ready to learn and expand my skills, especially in working with RESTful services if given the opportunity to join a company. I am highly motivated to grow professionally and deepen my understanding of mobile application development.";
  final displayTextLength = 0.0.obs;
  final showTyping = false.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeIn));

    leftSlideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset.zero)
        .animate((CurvedAnimation(
            parent: animationController, curve: Curves.easeIn)));
    rightSlideAnimation = Tween<Offset>(begin: Offset(2.5, 0), end: Offset.zero)
        .animate(
            CurvedAnimation(parent: animationController, curve: Curves.easeIn));
    typingAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 15));

    typingAnimation = Tween<double>(begin: 0, end: aboutMe.length.toDouble())
        .animate(typingAnimationController)
      ..addListener(() {
        displayTextLength.value = typingAnimation.value;
      });
    animationController.forward().then((_) {
      showTyping.value = true;

      typingAnimationController.forward();
    });
  }

  @override
  void onClose() {
    animationController.dispose();
    typingAnimationController.dispose();
    showTyping.value = false;
    super.onClose();
  }

  void increment() => count.value++;
}
