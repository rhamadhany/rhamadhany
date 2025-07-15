import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/app/modules/home/views/skill/list_skill.dart';
import 'package:portofolio/app/modules/home/views/skill/skill_model.dart';
import 'package:portofolio/app/modules/home/views/skill/skill_dialog.dart';

class SkillViewMobile extends StatelessWidget {
  const SkillViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Skill',
            style: GoogleFonts.amarante(fontSize: 35),
          ),
        ),
        ...List.generate(ListSkill.list.length, (index) {
          final item = ListSkill.list[index];
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextButton.icon(
              icon: FaIcon(
                item.icon,
                color: Colors.white,
                size: 28,
              ),
              onPressed: () {
                Get.dialog(SkillDialog(
                  content: item.contentDialog,
                  title: item.label,
                  icon: item.icon,
                ));
              },
              label: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  item.label,
                  style: GoogleFonts.audiowide(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.white),
                ),
              ),
              iconAlignment: IconAlignment.start,
            ),
          );
        })
      ],
    );
  }
}

class SkillViewDesktop extends GetView {
  const SkillViewDesktop({super.key});
  @override
  Widget build(BuildContext context) {
    final skills = ListSkill.list;
    final midPoint = (skills.length / 2.5).ceil();
    final firstColumn = skills.take(midPoint).toList();
    final lastColumn = skills.skip(midPoint).toList();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SkillBuilder(
          listColumn: firstColumn,
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
        ),
      ],
    );
  }
}

class SkillBuilder extends StatelessWidget {
  const SkillBuilder({
    super.key,
    required this.listColumn,
  });

  final List<SkillModel> listColumn;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(listColumn.length, (index) {
          final item = listColumn[index];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton.icon(
              icon: FaIcon(
                item.icon,
                color: Colors.white,
                size: 35,
              ),
              onPressed: () {
                Get.dialog(SkillDialog(
                  content: item.contentDialog,
                  title: item.label,
                  icon: item.icon,
                ));
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
          );
        }),
      ],
    );
  }
}
