import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portofolio/app/modules/home/pageBuilder/routes/pages_builder_routes.dart';
import 'package:portofolio/app/modules/home/pageBuilder/views/katalog_view.dart';
import 'package:portofolio/main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controllers/page_builder_controller.dart';

class PageBuilderView extends GetView<PageBuilderController> {
  const PageBuilderView({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.indigo,
            Colors.blue,
            Colors.lightBlue,

            Colors.blueAccent,
            // Colors.deepPurpleAccent,
          ]),
          borderRadius: BorderRadius.circular(10)),
      padding: isAndroid ? EdgeInsets.all(16) : EdgeInsets.all(40),
      height: Get.height * 0.8,
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: controller.pageController,
                itemCount: 7,
                itemBuilder: (context, index) {
                  final katalog = KatalogView(
                    asset: PagesBuilderRoutes.routes(index),
                    title: PagesBuilderRoutes.title(index),
                    index: index,
                  );
                  return katalog;
                }),
          ),
          SizedBox(
            height: 20,
          ),
          SmoothPageIndicator(
            controller: controller.pageController,
            count: 7,
            effect:
                WormEffect(activeDotColor: Colors.white, dotColor: Colors.grey),
          )
        ],
      ),
    );
  }
}
