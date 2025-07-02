import 'package:get/get.dart';

import '../controllers/page_builder_controller.dart';

class PageBuilderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PageBuilderController>(
      () => PageBuilderController(),
    );
  }
}
