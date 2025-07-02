import 'package:flutter/material.dart';

import 'package:get/get.dart';

class IndicatorView extends GetView {
  const IndicatorView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IndicatorView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'IndicatorView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
