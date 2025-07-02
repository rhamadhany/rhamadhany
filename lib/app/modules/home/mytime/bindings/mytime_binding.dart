import 'package:get/get.dart';

import '../controllers/mytime_controller.dart';

class MytimeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MytimeController>(
      () => MytimeController(),
    );
  }
}
