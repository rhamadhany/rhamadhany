import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageBuilderController extends GetxController {
  late PageController pageController;
  final pageIndex = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(
      initialPage: 0,
    );
    indexListener();
  }

  void indexListener() {
    pageController.addListener(() {
      pageIndex.value = pageController.page ?? 0;
    });
  }

  @override
  void onClose() {
    pageController.removeListener(() {});
    pageController.dispose();
    super.onClose();
  }
}
