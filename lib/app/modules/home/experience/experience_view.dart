import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/app/modules/email/views/email_view.dart';
import 'package:portofolio/app/modules/home/controllers/home_controller.dart';
import 'package:portofolio/app/modules/home/experience/experience_controller.dart';
import 'package:portofolio/app/modules/home/navigationButton/before_button.dart';
import 'package:portofolio/app/modules/contact/row_sosial_media.dart';
import 'package:portofolio/main.dart';

class ExperienceView extends GetView<ExperienceController> {
  const ExperienceView({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
          Spacer(),
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
          Spacer(),
          Spacer(),
          FadeTransition(
            opacity: controller.sosialAnimation,
            child: isAndroid
                ? Row(
                    children: [
                      IconCustom(
                          icon: Icon(
                            Icons.arrow_left_outlined,
                            size: 50,
                          ),
                          child: Text(
                            'Prev',
                            style: GoogleFonts.amarante(fontSize: 24),
                          ),
                          onPressed: () {
                            final homeController = Get.find<HomeController>();
                            if (homeController.indexTab.value == 1) {
                              homeController.tabController.animateTo(0);
                            } else if (homeController.indexTab.value == 2) {
                              homeController.tabController.animateTo(1);
                            }
                          }),
                    ],
                  )
                : Row(
                    children: [BeforeButton(), Spacer(), RowSosialMedia()],
                  ),
          )
        ],
      ),
    );
  }
}
