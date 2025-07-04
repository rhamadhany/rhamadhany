import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController
    with GetTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeAnimation;
  late Animation<Offset> leftSlideTransition;
  late Animation<Offset> rightSlideTransition;
  late Animation<double> visibleAnimation;

  late AnimationController visibleAnimationController;
  @override
  void onInit() {
    super.onInit();
    animationStart();
  }

  void animationStart() {
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
