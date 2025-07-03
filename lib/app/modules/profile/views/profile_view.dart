import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portofolio/app/modules/profile/views/about_me.dart';
import 'package:portofolio/app/modules/profile/views/contact/list_sosial_media.dart';
import 'package:portofolio/app/modules/profile/views/foto_profil.dart';
import 'package:portofolio/app/modules/profile/views/nama_profil.dart';
import 'package:portofolio/app/routes/app_pages.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(color: Colors.black, spreadRadius: 5, blurRadius: 1)
            ], color: Colors.black, borderRadius: BorderRadius.circular(20)),
            child: FadeTransition(
              opacity: controller.fadeAnimation,
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Get.offAllNamed(Routes.HOME);
                    },
                    icon: Icon(Icons.home)),
              ),
            ),
          ),
          Positioned(
              top: Get.height * 0.15,
              right: Get.width * 0.3,
              child: FotoProfil()),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(alignment: Alignment.bottomCenter, child: AboutMe()),
          ),
          NamaProfil(),
          ListSosialMedia(),
        ],
      ),
    );
  }
}
