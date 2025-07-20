import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/app/modules/email/views/email_view.dart';
import 'package:portofolio/app/modules/home/controllers/home_controller.dart';
import 'package:portofolio/app/modules/home/experience/experience_controller.dart';
import 'package:portofolio/app/modules/home/navigationButton/before_button.dart';
import 'package:portofolio/app/modules/home/navigationButton/next_button.dart';
import 'package:portofolio/app/modules/home/views/learning/controllers/learning_controller.dart';
import 'package:portofolio/app/modules/home/views/learning/views/learning_chat_ai.dart';
import 'package:portofolio/app/modules/home/views/learning/views/learning_ecommarce.dart';
import 'package:portofolio/app/modules/home/views/learning/views/learning_simple_ecommarce_bloc.dart';
import 'package:portofolio/main.dart';
import 'package:url_launcher/url_launcher.dart';

class LearningView extends GetView<LearningController> {
  const LearningView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LearningController());
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: FadeTransition(
              opacity: controller.opacity!,
              child: Center(
                child: Text(
                  'Learning',
                  style: GoogleFonts.amarante(fontSize: 35),
                ),
              )),
        ),
        Expanded(
            child: SizedBox(
                height: Get.height * 0.8,
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    LearningEcommarce(),
                    LearningChatAI(),
                    LearningSimpleEcommarceBloc()
                  ],
                )))),
        FadeTransition(
          opacity: controller.opacity!,
          child: isAndroid
              ? mobile()
              : Row(
                  children: [
                    BeforeButton(),
                    Spacer(),
                    NextButton(),
                  ],
                ),
        ),
      ],
    );
  }

  Row mobile() {
    final homeController = Get.find<HomeController>();

    return Row(
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
              if (homeController.indexTab.value == 1) {
                homeController.tabController.animateTo(0);
              } else if (homeController.indexTab.value == 2) {
                homeController.tabController.animateTo(1);
              }
            }),
        Spacer(),
        IconCustom(
          icon: Icon(
            Icons.arrow_right_outlined,
            size: 50,
          ),
          onPressed: () {
            if (homeController.indexTab.value == 0) {
              homeController.tabController.animateTo(1);
              Get.put(LearningController());
            } else if (homeController.indexTab.value == 1) {
              homeController.tabController.animateTo(2);
              Get.put(ExperienceController());
            }
          },
          rightIcon: true,
          child: Text(
            'Next',
            style: GoogleFonts.amarante(fontSize: 24),
          ),
        )
      ],
    );
  }
}

Widget subtitleButtonLearning(String url) {
  return TextButton(
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(url),
      ));
}

Widget subtitleLearning(String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 28.0),
    child: Text(value),
  );
}

Widget titleLearning(String value) {
  return Row(
    children: [
      Icon(
        Icons.circle,
        size: 16,
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        value,
        style: GoogleFonts.aladin(fontSize: 18),
      ),
    ],
  );
}
