import 'package:flutter/material.dart';

class ThumbnailDetails extends StatelessWidget {
  const ThumbnailDetails({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 145, 0, 171),
            boxShadow: [
              BoxShadow(
                  color: const Color.fromARGB(255, 216, 149, 228).withAlpha(75),
                  blurRadius: 50,
                  // offset: Offset(0, 10),
                  spreadRadius: 50),
              BoxShadow(
                  color: const Color.fromARGB(255, 243, 174, 255).withAlpha(75),
                  blurRadius: 50,
                  // offset: Offset(0, 10),
                  spreadRadius: 50),
            ],
            borderRadius: BorderRadius.circular(10),
            // gradient: LinearGradient(colors: [
            //   const Color.fromARGB(255, 225, 56, 255),
            //   const Color.fromARGB(255, 62, 168, 255),
            //   const Color.fromARGB(255, 94, 252, 99),
            //   const Color.fromARGB(255, 255, 147, 183),
            //   const Color.fromARGB(255, 147, 170, 255)
            // ]

            // )
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(height: 300, width: 300, child: Image.asset(name)),
          ),
        ),
      ),
    );
  }
}
