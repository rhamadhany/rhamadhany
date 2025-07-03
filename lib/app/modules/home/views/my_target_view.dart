import 'package:flutter/material.dart';

import 'package:get/get.dart';

class MyTargetView extends GetView {
  const MyTargetView({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "MY TARGET",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
        ),
        ...List.generate(3, (_) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.keyboard_double_arrow_right),
              SizedBox(
                width: 8,
              ),
              Text(
                "Success",
                style: TextStyle(fontSize: 16),
              ),
            ],
          );
        })
      ],
    );
  }
}
