import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/app/modules/home/navigationButton/before_button.dart';
import 'package:portofolio/app/modules/home/navigationButton/next_button.dart';
import 'package:portofolio/app/modules/home/views/learning/controllers/learning_controller.dart';
import 'package:portofolio/app/modules/home/views/learning/views/learning_ecommarce.dart';

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
                child: SingleChildScrollView(child: LearningEcommarce()))),
        Row(
          children: [
            BeforeButton(),
            Spacer(),
            NextButton(),
          ],
        ),
      ],
    );
  }
}
