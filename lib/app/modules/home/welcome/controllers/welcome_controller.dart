import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/main.dart';

class WelcomeController extends GetxController
    with GetTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeAnimation;
  late Animation<Offset> leftSlideTransition;
  late Animation<Offset> rightSlideTransition;
  late Animation<double> visibleAnimation;

  late AnimationController visibleAnimationController;
  AnimationController? typingAnimationController;
  Animation<double>? typingAnimation;

  final welcomeText = locale.languageCode == 'id'
      ? "Selamat datang di Portofolio Saya"
      : "Welcome to My Portofolio";
  final showWelcomeText = ''.obs;
  @override
  void onInit() {
    super.onInit();
    animationStart();
  }

  void animationStart() {
    typingAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));

    typingAnimation =
        Tween<double>(begin: 0, end: welcomeText.length.toDouble()).animate(
            CurvedAnimation(
                parent: typingAnimationController!, curve: Curves.easeInQuint));
    typingAnimationController?.addListener(() {
      final chars = typingAnimation!.value.floor();
      showWelcomeText.value = welcomeText.substring(0, chars);
    });

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    visibleAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));

    fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeIn));

    leftSlideTransition = Tween<Offset>(begin: Offset(-1, 0), end: Offset.zero)
        .animate(CurvedAnimation(
            parent: animationController, curve: Curves.easeOut));
    rightSlideTransition =
        Tween<Offset>(begin: Offset(0, -10), end: Offset.zero).animate(
            CurvedAnimation(
                parent: animationController, curve: Curves.easeOut));

    visibleAnimation = Tween<double>(begin: 0, end: 1.0).animate(
        CurvedAnimation(
            parent: visibleAnimationController, curve: Curves.easeIn));
    typingAnimationController?.forward();
    animationController.forward();
    visibleAnimationController.forward();
  }

  @override
  void onClose() {
    animationController.dispose();
    visibleAnimationController.dispose();
    super.onClose();
  }
}
