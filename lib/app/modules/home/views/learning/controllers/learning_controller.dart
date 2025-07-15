import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LearningController extends GetxController
    with GetSingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? opacity;
  final showExpansion = false.obs;
  final duration = Duration(seconds: 3);
  final showSubtitle = false.obs;

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(vsync: this, duration: duration);
    opacity = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: animationController!, curve: Curves.easeIn));

    animationController?.forward().then((_) {
      showExpansion.value = true;
    });
  }

  @override
  void onClose() {
    animationController?.dispose();
    super.onClose();
  }
}
