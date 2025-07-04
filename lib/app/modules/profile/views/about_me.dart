import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/app/modules/profile/controllers/profile_controller.dart';

class AboutMe extends GetView<ProfileController> {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
        opacity: controller.fadeAnimation,
        child: Obx(() {
          return controller.showTyping.value
              ? Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Obx(() {
                    final character =
                        controller.displayTextLength.value.floor();
                    final displayText = controller.aboutMe.substring(
                        0, character.clamp(0, controller.aboutMe.length));
                    return Text(
                      displayText,
                      style: GoogleFonts.atma(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    );
                  }))
              : SizedBox.shrink();
        }));
  }
}
