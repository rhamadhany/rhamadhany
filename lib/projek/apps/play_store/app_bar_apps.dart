import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portofolio/projek/apps/play_store/pop_menu_app_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class AppBarApps extends StatelessWidget {
  const AppBarApps({
    super.key,
    required this.link,
    required this.label,
  });

  final String link;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton.icon(
            icon: FaIcon(
              FontAwesomeIcons.googlePlay,
              color: Colors.blue,
            ),
            onPressed: () async {
              final url = Uri.parse(link);
              await launchUrl(url);
            },
            label: Text(
              label,
              style: TextStyle(color: Colors.white),
            )),
        Spacer(),
        PopMenuAppBar(),
      ],
    );
  }
}
