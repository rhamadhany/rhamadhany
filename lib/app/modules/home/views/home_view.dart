import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portofolio/app/modules/home/nameanimation/views/nameanimation_view.dart';
import 'package:portofolio/app/modules/home/pageBuilder/views/page_builder_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: NameanimationView(),
          // leading: Icon(Icons.person),
          // title: const Text('HomeView'),
          centerTitle: false,
        ),
        body: ListView(
          children: [PageBuilderView()],
        ));
  }
}
