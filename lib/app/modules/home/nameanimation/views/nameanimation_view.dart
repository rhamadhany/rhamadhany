import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portofolio/app/modules/home/mytime/views/mytime_view.dart';
import 'package:portofolio/app/routes/app_pages.dart';

import '../controllers/nameanimation_controller.dart';

class NameanimationView extends GetView<NameanimationController> {
  const NameanimationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final animationValue = controller.animation.value;

      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              Get.toNamed(Routes.PROFILE);
            },
            child: Row(
              children: [
                Icon(Icons.person),
                SizedBox(
                  width: 12,
                ),
                ShaderMask(
                  shaderCallback: (Rect bound) {
                    return LinearGradient(
                            colors: [
                          Colors.blue,
                          Colors.white,
                          Colors.black
                        ],
                            stops: [
                          animationValue,
                          animationValue + 0.5,
                          animationValue + 1.0
                        ],
                            begin: Alignment(animationValue * 2, 0),
                            end: Alignment(animationValue * 2 - 1, 0),
                            tileMode: TileMode.mirror)
                        .createShader(bound);
                  },
                  child: Text(
                    "rhamadhany",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          MytimeView(),
        ],
      );
    });
  }
}
