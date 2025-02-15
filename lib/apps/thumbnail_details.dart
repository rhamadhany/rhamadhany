import 'package:flutter/material.dart';

class ThumbnailDetails extends StatelessWidget {
  const ThumbnailDetails({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.purple,
      child: SizedBox(height: 300, width: 300, child: Image.asset(name)),
    );
  }
}
