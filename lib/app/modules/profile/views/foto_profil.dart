import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/app/modules/profile/views/contact/list_sosial_media.dart';

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
