import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portofolio/app/modules/contact/row_sosial_media.dart';
// import 'package:portofolio/app/modules/contact/row_sosial_media.dart';
import 'package:portofolio/app/modules/home/nameanimation/views/nameanimation_view.dart';
import 'package:portofolio/app/modules/home/navigationButton/next_button.dart';
import 'package:portofolio/app/modules/home/pageBuilder/views/page_builder_view.dart';
import 'package:portofolio/app/modules/home/experience/experience_view.dart';
import 'package:portofolio/app/modules/home/views/skill/skill_view.dart';
import 'package:portofolio/app/modules/home/welcome/views/welcome_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: NameanimationView(),
        centerTitle: false,
      ),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: controller.tabController,
              children: [
                ListView.builder(
                    itemCount: listBody.length,
                    itemBuilder: (context, index) {
                      return listBody[index];
                    }),
                ExperienceView(),
              ])),
    );
  }
}

List<Widget> listBody = [
  WelcomeView(),
  SizedBox(
    height: Get.height * 0.25,
  ),
  PageBuilderView(),
  SizedBox(
    height: Get.height * 0.25,
  ),
  SkillView(),
  // SizedBox(
  //   height: Get.height * 0.15,
  // ),
  SizedBox(
    height: Get.height * 0.15,
  ),
  Row(
    children: [
      Spacer(),
      RowSosialMedia(),
      Spacer(),
      NextButton(),
      SizedBox(
        width: Get.width * 0.15,
      ),
    ],
  ),
  // Row(
  //   children: [
  //     Spacer(),
  //     RowSosialMedia(),
  //     Spacer(),
  //   ],
  // ),

  SizedBox(
    height: Get.height * 0.15,
  ),
];
