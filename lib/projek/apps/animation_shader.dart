import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/controller/text_animation.dart';

class AnimationShader extends GetView<TextAnimation> {
  const AnimationShader({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final color1 = controller.color1.value;
      final color2 = controller.color2.value;
      final color3 = controller.color3.value;

      return Center(
        child: ShaderMask(
          shaderCallback: (Rect bounds) {
            return LinearGradient(
                begin: Alignment(controller.colorOffset.value, 0),
                end: Alignment(controller.colorOffset.value + 0.5, 0),
                colors: [color1, color2, color3]).createShader(bounds);
          },
          child: Text(
            textAlign: TextAlign.center,
            text,
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      );
    });
  }
}
