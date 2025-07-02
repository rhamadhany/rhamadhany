import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListSosialMedia extends StatelessWidget {
  const ListSosialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.email)),
            IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.facebook,
                )),
            IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.instagram,
                )),
            IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.github,
                )),
          ],
        ),
      ),
    );
  }
}
