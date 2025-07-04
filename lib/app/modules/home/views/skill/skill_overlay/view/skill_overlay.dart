import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/app/modules/home/views/skill/skill_overlay/controller/skill_overlay_controller.dart';

class SkillOverlayView extends GetView<SkillOverlayController> {
  const SkillOverlayView({super.key, required this.content});
  final String content;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: FadeTransition(
        opacity: controller.fadeAnimation,
        child: Material(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Center(
              child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child: Text(content),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
