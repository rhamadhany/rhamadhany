import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/mytime_controller.dart';

class MytimeView extends GetView<MytimeController> {
  const MytimeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(() => Text(
          controller.currentTime.value,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ));
  }
}
