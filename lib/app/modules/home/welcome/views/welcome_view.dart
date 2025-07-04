import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/app/modules/contact/row_sosial_media.dart';
import 'package:portofolio/app/modules/home/welcome/bindings/welcome_binding.dart';
import 'package:portofolio/main.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({super.key});
  @override
  Widget build(BuildContext context) {
    WelcomeBinding().dependencies();
    final alpha = 80;
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          FadeTransition(
            opacity: controller.fadeAnimation,
            child: ShaderMask(
              shaderCallback: (Rect bound) {
                return LinearGradient(colors: [
                  Colors.blue.withAlpha(alpha),
                  Colors.blue.withAlpha(alpha),
                  Colors.white.withAlpha(alpha)
                ]).createShader(bound);
              },
              child: FaIcon(
                FontAwesomeIcons.flutter,
                size: Get.width * 0.15,
                color: Colors.white,
              ),
            ),
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: FadeTransition(
                  opacity: controller.fadeAnimation,
                  child: SlideTransition(
                    position: controller.rightSlideTransition,
                    child: Text(
                      "Flutter Developer",
                      style: GoogleFonts.macondo(fontSize: Get.width * 0.035),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.5,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: FadeTransition(
                  opacity: controller.fadeAnimation,
                  child: SlideTransition(
                    position: controller.leftSlideTransition,
                    child: Text(
                      locale.languageCode == 'id'
                          ? "Selamat datang di Portofolio Saya"
                          : "Welcome to My Portofolio",
                      style: GoogleFonts.macondo(fontSize: Get.width * 0.035),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
              right: 0,
              bottom: 0,
              child: FadeTransition(
                opacity: controller.fadeAnimation,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RowSosialMedia(),
                ),
              )),
        ],
      ),
    );
  }
}
