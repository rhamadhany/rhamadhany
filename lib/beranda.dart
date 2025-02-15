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
            // TextButton(
            //     onPressed: () {
            //       Get.toNamed('/contact');
            //     },
            //     child: Text(
            //       'CONTACT',
            //       style: TextStyle(color: Colors.white),
            //     )),
            TextButton(
                onPressed: () {
                  Get.toNamed('/project');
                },
                child: Text(
                  'PROJECT',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: FotoProfil(),
      ),
    );
  }
}
