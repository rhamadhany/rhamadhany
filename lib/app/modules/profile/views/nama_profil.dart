import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:portofolio/app/modules/home/welcome/controllers/welcome_controller.dart';
import 'package:portofolio/app/modules/profile/controllers/profile_controller.dart';

class NamaProfil extends GetView<ProfileController> {
  const NamaProfil({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.find<WelcomeController>();

    return Positioned(
      left: Get.width * 0.175,
      bottom: Get.height * 0.3,
      child: SlideTransition(
        position: controller.leftSlideAnimation,
        child: FadeTransition(
          opacity: controller.fadeAnimation,
          child: Column(
            children: [
              Text(
                "rhamadhany",
                style: GoogleFonts.aladin(
                    fontSize: 45, fontWeight: FontWeight.bold),
              ),
              Text(
                "Flutter Developer Jr",
                style: GoogleFonts.aubrey(
                    fontWeight: FontWeight.w500, fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
