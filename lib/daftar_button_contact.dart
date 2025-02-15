import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class DaftarButtonContact extends StatelessWidget {
  const DaftarButtonContact({super.key, required this.dariEmail});
  final bool dariEmail;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () async {
              final url = Uri.parse('https://github.com/rhamadhany');
              await launchUrl(url);
            },
            icon: FaIcon(
              FontAwesomeIcons.github,
              color: dariEmail ? Colors.white : Colors.black,
            )),
        IconButton(
            onPressed: () async {
              final url = Uri.parse(
                  'https://www.linkedin.com/in/rhama-dhany-366ab2335');
              await launchUrl(url);
            },
            icon: FaIcon(
              FontAwesomeIcons.linkedin,
              color: dariEmail ? Colors.white : Colors.black,
            )),
        IconButton(
            onPressed: () async {
              final url = Uri.parse('https://www.instagram.com/_rhamadhany');
              await launchUrl(url);
            },
            icon: FaIcon(
              FontAwesomeIcons.instagram,
              color: dariEmail ? Colors.white : Colors.black,
            )),
        if (!dariEmail)
          IconButton(
              onPressed: () {
                Get.toNamed('/contact');
              },
              icon: Icon(
                Icons.email,
                color: dariEmail ? Colors.white : Colors.black,
              ))
      ],
    );
  }
}
