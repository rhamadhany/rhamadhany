import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/app/modules/home/experience/experience_controller.dart';
import 'package:portofolio/app/modules/home/navigationButton/before_button.dart';
import 'package:portofolio/app/modules/contact/row_sosial_media.dart';

class ExperienceView extends GetView<ExperienceController> {
  const ExperienceView({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: FadeTransition(
              opacity: controller.fadeAnimation,
              child: Text(
                'Experience',
                style: GoogleFonts.amarante(fontSize: 35),
              ),
            ),
          ),
          Obx(() {
            final character = controller.displayText.value.floor();
            final display = controller.experienceText.substring(
                0, character.clamp(0, controller.experienceText.length));
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
              child: Text(display, style: GoogleFonts.merienda()),
            );
          }),
          Spacer(),
          Spacer(),
          FadeTransition(
            opacity: controller.sosialAnimation,
            child: Row(
              children: [BeforeButton(), Spacer(), RowSosialMedia()],
            ),
          )
        ],
      ),
    );
  }
}
