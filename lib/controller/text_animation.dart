import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextAnimation extends GetxController
    with GetSingleTickerProviderStateMixin {
  final _random = Random();

  final color1 = const Color(0xFF2196F3).obs;
  final color2 = const Color(0xFF4CAF50).obs;
  final color3 = const Color(0xFFFFC107).obs;

  final colorOffset = 0.0.obs;
  Timer? _timer;
  @override
  void onInit() {
    super.onInit();

    _timer = Timer.periodic(Duration(milliseconds: 300), ((timer) {
      _updateColors();
    }));
  }

  @override
  void onClose() {
    super.onClose();
    _timer?.cancel();
  }

  void _updateColors() {
    color1.value = _generateVibrantColor();
    color2.value = _generateVibrantColor();
    color3.value = _generateVibrantColor();
  }

  Color _generateVibrantColor() {
    return Color.lerp(
      Color.fromARGB(
        255,
        _random.nextInt(200),
        _random.nextInt(200),
        _random.nextInt(200),
      ),
      Colors.white,
      0.3,
    )!;
  }
}
