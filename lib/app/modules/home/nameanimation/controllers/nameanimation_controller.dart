import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NameanimationController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  final animation = 0.0.obs;
  @override
  void onInit() {
    super.onInit();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 2500))
          ..repeat();
    animationListener();
  }

  void animationListener() {
    animationController.addListener(() {
      animation.value = animationController.value;
    });
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
