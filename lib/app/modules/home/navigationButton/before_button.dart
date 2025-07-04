import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/app/modules/home/controllers/home_controller.dart';

class BeforeButton extends GetView<HomeController> {
  const BeforeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(80.0),
      child: Align(
          alignment: Alignment.bottomLeft,
          child: InkWell(
            onTap: () {
              controller.tabController.animateTo(0);
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Before",
                  style: GoogleFonts.amarante(fontSize: 35),
                ),
                Icon(
                  Icons.arrow_left_outlined,
                  size: 75,
                ),
              ],
            ),
          )),
    );
  }
}
