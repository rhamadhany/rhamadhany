import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextAnimation extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final AnimationController animationController;
  final _random = Random();
  // Gunakan tipe Color
  final color1 = const Color(0xFF2196F3).obs; // Blue
  final color2 = const Color(0xFF4CAF50).obs; // Green
  final color3 = const Color(0xFFFFC107).obs; // Amber

  // Atau
  final colorOffset = 0.0.obs;
  DateTime? _lastColorUpdate;

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);

    animationController.addListener(_handleAnimationUpdate);
  }

  void _handleAnimationUpdate() {
    colorOffset.value = animationController.value * 2 - 1;

    if (_shouldUpdateColors()) {
      _updateColors();
      _lastColorUpdate = DateTime.now();
    }
  }

  bool _shouldUpdateColors() {
    return _lastColorUpdate == null ||
        DateTime.now().difference(_lastColorUpdate!) >
            const Duration(milliseconds: 250);
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

  @override
  void onClose() {
    animationController
      ..removeListener(_handleAnimationUpdate)
      ..dispose();
    super.onClose();
  }
}
