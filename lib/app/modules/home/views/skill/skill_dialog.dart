import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillDialog extends StatelessWidget {
  const SkillDialog(
      {super.key,
      required this.content,
      required this.title,
      required this.icon});
  final String content;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SkillDialogController());
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Center(
        child: AlertDialog(
          title: FadeTransition(
            opacity: controller.animationController,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                FaIcon(icon),
                SizedBox(
                  width: 8,
                ),
                Text(
                  title,
                  style: GoogleFonts.aladin(fontSize: 30),
                ),
              ],
            ),
          ),
          insetPadding: EdgeInsets.all(20),
          backgroundColor: Colors.grey.shade800,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: FadeTransition(
            opacity: controller.fadeAnimation,
            child: Text(
              content,
              style: GoogleFonts.ubuntu(),
            ),
          ),
        ),
      ),
    );
  }
}

class SkillDialogController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<double> fadeAnimation;
  @override
  void onInit() {
    super.onInit();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeIn));
    animationController.forward();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
