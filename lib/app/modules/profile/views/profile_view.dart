import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portofolio/app/modules/profile/views/about_me.dart';
import 'package:portofolio/app/modules/profile/views/foto_profil.dart';
import 'package:portofolio/app/modules/profile/views/nama_profil.dart';
import 'package:portofolio/app/routes/app_pages.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        // title: const Text('ProfileView'),
        leading: IconButton(
            onPressed: () {
              Get.toNamed(Routes.HOME);
            },
            icon: Icon(Icons.home)),
        // centerTitle: true,
      ),
      body: Column(
        children: [
          FotoProfil(),
          SizedBox(
            height: 20,
          ),
          NamaProfil(),
          AboutMe(),
        ],
      ),
    );
  }
}
