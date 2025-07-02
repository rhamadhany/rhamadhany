import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portofolio/app/modules/home/pageBuilder/views/playstore/play_store_link.dart';

class PlayStoreButton extends StatelessWidget {
  const PlayStoreButton({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: IconButton(
          onPressed: () => PlayStoreLink.onPressed(index),
          icon: FaIcon(
            FontAwesomeIcons.googlePlay,
            color: Colors.white,
          )),
    );
  }
}
