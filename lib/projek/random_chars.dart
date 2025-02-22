import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portofolio/controller/text_animation.dart';

class RandomChars extends GetView<TextAnimation> {
  RandomChars({super.key});

  final karakter = ''.obs;

  final count = 0.obs;

  final durasi = 150.obs;
  final jumlahKarakter = 4096.obs;
  final isSleeping = false.obs;

  @override
  Widget build(BuildContext context) {
    generateChars();

    return Obx(() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
        child: ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                  begin: isSleeping.value
                      ? Alignment.topCenter
                      : Alignment.centerLeft,
                  end: isSleeping.value
                      ? Alignment.bottomCenter
                      : Alignment.bottomRight,
                  colors: [
                    controller.color1.value,
                    controller.color2.value,
                    controller.color3.value,
                    controller.color3.value,
                    controller.color2.value,
                    controller.color1.value,
                  ]).createShader(bounds);
            },
            child: isSleeping.value
                ? Center(
                    child: FaIcon(
                      FontAwesomeIcons.flutter,
                      size: 450,
                      color: Colors.white,
                    ),
                  )
                : Text(
                    textAlign: TextAlign.start,
                    karakter.value,
                    style: TextStyle(color: Colors.white),
                  )),
      );
    });
  }

  Future<void> generateChars() async {
    final random = Random();

    final String chars = "abcdefghijklmnopqrstwxyzABCDEFGHIJKLMNOPQRSTWXYZ ";
    Timer.periodic(Duration(milliseconds: 150), (_) async {
      jumlahKarakter.value = count.value >= 20 ? random.nextInt(256) : 4096;

      if (count.value <= 20) {
        isSleeping.value = true;
      } else {
        isSleeping.value = false;
      }
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
