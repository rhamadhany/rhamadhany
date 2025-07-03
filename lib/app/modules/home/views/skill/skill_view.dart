import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:portofolio/app/modules/home/views/skill/list_skill.dart';
import 'package:portofolio/app/modules/home/views/skill/skill_dialog.dart';

class SkillView extends GetView {
  const SkillView({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Center(
          child: Text(
            "SKILL",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          ),
        ),
        ...List.generate(ListSkill.list.length, (index) {
          final item = ListSkill.skill(index);
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton.icon(
              icon: FaIcon(
                item.icon,
                color: Colors.white,
                size: 35,
              ),
              onPressed: () => Get.dialog(SkillDialog(
                content: item.contentDialog,
              )),
              label: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  item.label,
                  style: TextStyle(
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
