import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  final indexTab = 0.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: 2)
      ..addListener(() => indexTab.value = tabController.index);
  }

  @override
  void onClose() {
    tabController.removeListener(() {});
    tabController.dispose();
    super.onClose();
  }

  void increment() => count.value++;
}
