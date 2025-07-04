import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/app/modules/home/controllers/home_controller.dart';
import 'package:portofolio/app/modules/home/experience/experience_controller.dart';

class NextButton extends GetView<HomeController> {
  const NextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomRight,
        child: InkWell(
          onTap: () {
            controller.tabController.animateTo(1);
            Get.put(ExperienceController());
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Next",
                style: GoogleFonts.amarante(fontSize: 35),
              ),
              Icon(
                Icons.arrow_right_outlined,
                size: 75,
              ),
            ],
          ),
        ));
  }
}
