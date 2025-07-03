import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/mytime_controller.dart';

class MytimeView extends GetView<MytimeController> {
  const MytimeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(() => Text(
          controller.currentTime.value,
          style: GoogleFonts.syneMono(
              color: Colors.white, fontWeight: FontWeight.w400),
        ));
  }
}
