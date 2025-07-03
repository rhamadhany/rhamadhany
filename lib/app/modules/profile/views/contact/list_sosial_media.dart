import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portofolio/app/modules/profile/controllers/profile_controller.dart';

class ListSosialMedia extends GetView<ProfileController> {
  const ListSosialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: Get.width * 0.075,
      bottom: Get.height * 0.5,
      child: SlideTransition(
        position: controller.rightSlideAnimation,
        child: FadeTransition(
          opacity: controller.fadeAnimation,
          child: Column(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.email)),
              IconButton(
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.facebook,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.instagram,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.github,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
