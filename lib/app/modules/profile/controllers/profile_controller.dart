import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeAnimation;
  late Animation<Offset> leftSlideAnimation;
  late Animation<Offset> rightSlideAnimation;

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
    animationController.forward();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }

  void increment() => count.value++;
}
