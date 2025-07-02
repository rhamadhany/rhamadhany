import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:portofolio/app/routes/app_pages.dart';
import 'package:portofolio/main.dart';

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

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Text(
        locale.languageCode == 'id'
            ? "Saya adalah seorang junior Flutter developer. Saya telah mengembangkan berbagai aplikasi menggunakan Flutter, baik untuk kebutuhan pribadi maupun untuk dipublikasikan. Beberapa aplikasi yang telah saya selesaikan dapat ditemukan di halaman Play Store. Saya sangat bersemangat untuk terus meningkatkan kemampuan dan keterampilan teknis saya."
            : "I am a junior Flutter developer. I have built various applications using Flutter, both for personal use and for publication. Some of the apps I’ve completed are available on the Play Store. I am highly motivated to continue improving my technical skills and knowledge.",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}

class NamaProfil extends StatelessWidget {
  const NamaProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "rhamadhany",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        Text(
          "Flutter Developer Jr",
          style: TextStyle(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}

class ListSosialMedia extends StatelessWidget {
  const ListSosialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40.0),
      child: Align(
        alignment: Alignment.centerRight,
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
    );
  }
}

class FotoProfil extends StatelessWidget {
  const FotoProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: Get.width * 0.25,
          height: Get.width * 0.25,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(color: Colors.deepPurple, spreadRadius: 1, blurRadius: 1)
          ], shape: BoxShape.circle),
          child: Image.asset(
            "assets/rhamadhany.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: Get.width * 0.25,
          height: Get.width * 0.25,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              border: BoxBorder.all(
                color: Colors.deepPurple,
                width: 2,
              ),
              shape: BoxShape.circle),
        ),
        ListSosialMedia(),
      ],
    );
  }
}
