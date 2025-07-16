import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimationLearningModel extends StatelessWidget {
  const AnimationLearningModel({
    super.key,
    required this.title,
    required this.children,
  });
  final String title;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    final width = Get.width.obs;
    final showExpansion = false.obs;

    Future.delayed(Duration(seconds: 1)).then((_) {
      showExpansion.value = true;
    });
    return Obx(() {
      return SizedBox(
        child: AnimatedOpacity(
          opacity: showExpansion.value ? 1 : 0,
          duration: Duration(seconds: 1),
          child: AnimatedContainer(
            width: width.value,
            duration: Duration(seconds: 1),
            curve: Curves.decelerate,
            child: ExpansionTile(
              onExpansionChanged: (value) {
                if (value) {
                  width.value = Get.width * 0.85;
                  Future.delayed(Duration(seconds: 1)).then((_) {
                    width.value = Get.width;
                  });
                }
              },
              childrenPadding:
                  EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              title: Text(
                title,
                style: GoogleFonts.michroma(),
              ),
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            ),
          ),
        ),
      );
    });
  }
}
