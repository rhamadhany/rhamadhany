import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/app/modules/home/views/skill/list_skill.dart';
import 'package:portofolio/app/modules/home/views/skill/skill_overlay/controller/skill_overlay_controller.dart';
import 'package:portofolio/app/modules/home/views/skill/skill_model.dart';

class SkillView extends GetView {
  const SkillView({super.key});
  @override
  Widget build(BuildContext context) {
    final skills = ListSkill.list;
    final midPoint = (skills.length / 2).ceil();
    final firstColumn = skills.take(midPoint).toList();
    final lastColumn = skills.skip(midPoint).toList();
    final mousePositionController = Get.put(MousePositionController());

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SkillBuilder(
          listColumn: firstColumn,
          mousePositionController: mousePositionController,
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            "Skills",
            style: GoogleFonts.breeSerif(
                fontSize: 35, fontWeight: FontWeight.bold),
          ),
        ),
        SkillBuilder(
          listColumn: lastColumn,
          mousePositionController: mousePositionController,
        ),
      ],
    );
  }
}

class SkillBuilder extends StatelessWidget {
  const SkillBuilder({
    super.key,
    required this.listColumn,
    required this.mousePositionController,
  });

  final List<SkillModel> listColumn;
  final MousePositionController mousePositionController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(listColumn.length, (index) {
          final item = listColumn[index];
          return MouseRegion(
            onHover: (event) {
              mousePositionController.updatePositon(event.position);
              if (mousePositionController.shouldClose(50)) {
                if (SkillOverlayController.isShowOverlay) {
                  // Get.back();
                  Get.delete<SkillOverlayController>();
                }
              }
            },
            onEnter: (event) {
              mousePositionController.setEnterPosition(event.position);
              if (!SkillOverlayController.isShowOverlay) {
                Get.put(SkillOverlayController(content: item.contentDialog));
                // Get.dialog(SkillDialog(
                //   content: item.contentDialog,
                // ));
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton.icon(
                icon: FaIcon(
                  item.icon,
                  color: Colors.white,
                  size: 35,
                ),
                onPressed: () {
                  if (!SkillOverlayController.isShowOverlay) {
                    Get.put(
                        SkillOverlayController(content: item.contentDialog));
                    // Get.dialog(SkillDialog(
                    //   content: item.contentDialog,
                    // ));
                  }
                },
                label: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    item.label,
                    style: GoogleFonts.audiowide(
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                ),
                iconAlignment: IconAlignment.start,
              ),
            ),
          );
        }),
      ],
    );
  }
}

class MousePositionController extends GetxController {
  final enterPosition = Rx<Offset?>(null);
  final currentPosition = Rx<Offset?>(null);

  void setEnterPosition(Offset position) {
    enterPosition.value = position;
    currentPosition.value = position;
  }

  void updatePositon(Offset position) {
    currentPosition.value = position;
  }

  bool shouldClose(double thr) {
    if (enterPosition.value == null || currentPosition.value == null) {
      return false;
    }
    final dist = math.sqrt(
        math.pow(currentPosition.value!.dx - enterPosition.value!.dx, 2) +
            math.pow(currentPosition.value!.dy - enterPosition.value!.dy, 2));
    // final dist = currentPosition.value!.dy - enterPosition.value!.dy;

    final close = dist > thr;
    // print("dist $dist thr $thr close $close");
    return close;
  }
}
