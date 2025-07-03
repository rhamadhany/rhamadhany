import 'dart:ui';
import 'package:flutter/material.dart';

class SkillDialog extends StatelessWidget {
  const SkillDialog({super.key, required this.content});
  final String content;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: Colors.blue,
        content: Text(content),
      ),
    );
  }
}
