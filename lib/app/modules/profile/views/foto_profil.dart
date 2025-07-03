import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/app/modules/profile/controllers/profile_controller.dart';

class FotoProfil extends GetView<ProfileController> {
  const FotoProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: controller.fadeAnimation,
      child: Container(
        width: Get.width * 0.25,
        height: Get.width * 0.25,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: Colors.deepPurple, spreadRadius: 3, blurRadius: 0)
        ], shape: BoxShape.circle),
        child: Transform.scale(
          scale: 1.15,
          child: Image.asset(
            "assets/rhamadhany.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
