import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/app/modules/home/views/skill/skill_overlay/view/skill_overlay.dart';

class SkillOverlayController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late OverlayEntry _overlayEntry;
  final String content;
  SkillOverlayController({required this.content});
  static bool isShowOverlay = false;

  late AnimationController animationController;
  late Animation<double> fadeAnimation;

  @override
  void onInit() {
    super.onInit();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeIn));

    showOverlay();
  }

  void showOverlay() {
    _overlayEntry = OverlayEntry(
        builder: (context) => Positioned.fill(
                child: SkillOverlayView(
              content: content,
            )));
    Overlay.of(Get.overlayContext!).insert(_overlayEntry);
    animationController.forward();
    isShowOverlay = true;
  }

  void removeOverlay() {
    fadeAnimation = Tween<double>(begin: 1, end: 0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeOut));
    animationController.forward();

    Future.delayed(Duration(milliseconds: 250)).then((_) {
      _overlayEntry.remove();

      isShowOverlay = false;
    });
  }

  @override
  void onClose() {
    removeOverlay();

    animationController.dispose();
    super.onClose();
  }
}
