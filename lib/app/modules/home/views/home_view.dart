import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portofolio/app/modules/home/pageBuilder/views/page_builder_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: RichText(
            text: TextSpan(
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24),
                children: [
                  TextSpan(text: "rhama"),
                  TextSpan(text: "dhany", style: TextStyle(color: Colors.blue)),
                ]),
          ),
          leading: Icon(Icons.person),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          // title: const Text('HomeView'),
          centerTitle: false,
        ),
        body: ListView(
          children: [PageBuilderView()],
        ));
  }
}
