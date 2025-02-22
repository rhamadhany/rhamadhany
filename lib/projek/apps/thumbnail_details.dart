import 'package:flutter/material.dart';

class ListThumbnailApps extends StatelessWidget {
  const ListThumbnailApps({super.key, required this.list});
  final List<String> list;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
            child: SizedBox(
              width: 400,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: list.map((t) => ThumbnailDetails(name: t)).toList(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

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
                  spreadRadius: 50),
              BoxShadow(
                  color: const Color.fromARGB(255, 243, 174, 255).withAlpha(75),
                  blurRadius: 50,
                  spreadRadius: 50),
            ],
            borderRadius: BorderRadius.circular(10),
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
