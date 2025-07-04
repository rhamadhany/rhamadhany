import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/main.dart';

class ExperienceController extends GetxController
    with GetTickerProviderStateMixin {
  late AnimationController animationController;
  late AnimationController fadeAnimationController;
  late Animation<double> fadeAnimation;
  late Animation<double> typingAnimation;

  late AnimationController sosialAnimationController;
  late Animation<double> sosialAnimation;
  final experienceText = locale.languageCode == 'id'
      ? "Saya belum memiliki pengalaman kerja di perusahaan profesional karena selama ini fokus pada proyek mandiri. Namun, saya sangat terbuka untuk belajar dan siap mengembangkan diri. Bisakah Anda memberikan pengalaman tersebut, tolong?"
      : "I haven’t worked in a professional company yet, as I’ve been focusing on independent projects so far. However, I’m eager to learn and ready to grow. Could you offer me that experience, please?";
  final displayText = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    listInitialAnimationController();
    fadeAnimator();
  }

  void listInitialAnimationController() {
    fadeAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: fadeAnimationController, curve: Curves.easeIn));
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 10));

    typingAnimation =
        Tween<double>(begin: 0, end: experienceText.length.toDouble())
            .animate(animationController)
          ..addListener(() {
            displayText.value = typingAnimation.value;
          });

    sosialAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    sosialAnimation = Tween<double>(begin: 0.0, end: 2.0).animate(
        CurvedAnimation(
            parent: sosialAnimationController, curve: Curves.easeIn));
  }

  void typeAnimator() {
    animationController.forward().then((_) {
      sosialAnimator();
    });
  }

  void fadeAnimator() {
    fadeAnimationController.forward().then((_) {
      // Future.delayed(Duration(seconds: 2)).then((_) {
      typeAnimator();
      // });
    });
  }

  void sosialAnimator() {
    sosialAnimationController.forward();
  }

  @override
  void onClose() {
    fadeAnimationController.dispose();
    animationController.dispose();
    sosialAnimationController.dispose();
    super.onClose();
  }
}
