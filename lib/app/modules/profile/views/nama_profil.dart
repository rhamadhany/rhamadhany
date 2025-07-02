import 'package:flutter/material.dart';

class NamaProfil extends StatelessWidget {
  const NamaProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "rhamadhany",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        Text(
          "Flutter Developer Jr",
          style: TextStyle(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
