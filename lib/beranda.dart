import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/foto_profil.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              color: Colors.white,
              onPressed: () {
                Get.toNamed('/project');
              },
              icon: Icon(Icons.work),
            )
          ],
        ),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(color: Colors.black),
        child: FotoProfil(),
      ),
    );
  }
}
