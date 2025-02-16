import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/apps/text_animation.dart';

class RandomChars extends StatelessWidget {
  RandomChars({super.key});

  final karakter = ''.obs;
  final TextAnimation _textAnimation = Get.find();
  final count = 0.obs;

  final durasi = 150.obs;
  final jumlahKarakter = 4096.obs;

  @override
  Widget build(BuildContext context) {
    generateChars();

    return Obx(() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
        child: ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(colors: [
                _textAnimation.color1.value,
                _textAnimation.color2.value,
                _textAnimation.color3.value,
                _textAnimation.color3.value,
                _textAnimation.color2.value,
                _textAnimation.color1.value,
              ]).createShader(bounds);
            },
            child: Text(
              textAlign: TextAlign.start,
              karakter.value,
              style: TextStyle(color: Colors.white),
            )
            // style: GoogleFonts.robotoMono(color: Colors.white)),
            ),
      );
    });
  }

  void generateChars() {
    final random = Random();

    final String chars = "abcdefghijklmnopqrstwxyzABCDEFGHIJKLMNOPQRSTWXYZ ";
    Timer.periodic(Duration(milliseconds: 150), (_) {
      jumlahKarakter.value = count.value >= 20 ? random.nextInt(256) : 4096;

      if (count.value >= 40) {
        count.value = 0;
      }

      count.value++;

      if (karakter.value.length >= 4096) {
        karakter.value = '';
      }
      karakter.value += String.fromCharCodes(Iterable.generate(
          jumlahKarakter.value,
          (_) => chars.codeUnitAt(random.nextInt(chars.length))));
    });
  }
}
