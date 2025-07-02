import 'dart:async';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:portofolio/main.dart';

class MytimeController extends GetxController {
  final currentTime = ''.obs;
  late Timer timer;
  @override
  void onInit() {
    super.onInit();
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      updateTimer();
    });
    updateTimer();
  }

  void updateTimer() {
    final now = DateTime.now().toUtc().add(Duration(hours: 8));
    final formatter = DateFormat('EEEE, HH:mm:ss', locale.toString());
    currentTime.value = formatter.format(now);
  }

  @override
  void onClose() {
    timer.cancel();
    super.onClose();
  }
}
