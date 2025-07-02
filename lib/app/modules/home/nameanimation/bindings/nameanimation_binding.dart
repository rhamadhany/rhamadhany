import 'package:get/get.dart';

import '../controllers/nameanimation_controller.dart';

class NameanimationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NameanimationController>(
      () => NameanimationController(),
    );
  }
}
