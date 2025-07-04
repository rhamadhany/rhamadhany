import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portofolio/app/modules/profile/controllers/profile_controller.dart';
import 'package:url_launcher/url_launcher.dart';

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
              ...List.generate(ListSosialMediaModel.list.length, (index) {
                final item = ListSosialMediaModel.sosial(index);
                return IconButton(
                    onPressed: () => launchUrl(Uri.parse(item.url)),
                    icon: FaIcon(
                      item.icon,
                    ));
              })
            ],
          ),
        ),
      ),
    );
  }
}

class SosialMediaModel {
  final IconData icon;
  final String url;

  SosialMediaModel({required this.icon, required this.url});
}

class ListSosialMediaModel {
  static final list = [
    SosialMediaModel(
        icon: FontAwesomeIcons.facebook,
        url: "https://www.facebook.com/profile.php?id=61576751694933"),
    SosialMediaModel(
        icon: FontAwesomeIcons.instagram,
        url: "https://www.instagram.com/_rhamadhany?igsh=MWZqZG42ZTNrcmdzcg=="),
    SosialMediaModel(
        icon: FontAwesomeIcons.github, url: "https://github.com/rhamadhany")
  ];

  static SosialMediaModel sosial(int index) => list[index];
}
