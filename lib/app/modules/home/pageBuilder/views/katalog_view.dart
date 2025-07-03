import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/app/modules/home/pageBuilder/routes/pages_builder_routes.dart';
import 'package:portofolio/app/modules/home/pageBuilder/views/playstore/play_store_link.dart';

class KatalogView extends GetView {
  const KatalogView(
      {required this.index,
      required this.title,
      required this.asset,
      super.key});
  final String asset;
  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 1, spreadRadius: 1)
            ], borderRadius: BorderRadius.circular(10), color: Colors.black87),
            child: Image.asset(
              asset,
              fit: BoxFit.cover,
            ),
          ),
          Spacer(),
          Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Spacer(),
                  PagesBuilderRoutes.subtitle(index),
                  Spacer(),
                  Spacer(),
                ],
              ),
              Positioned(
                left: 0,
                bottom: 0,
                child: InkWell(
                  onTap: () => PlayStoreLink.onPressed(index),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.amarante(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 35),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      FaIcon(
                        FontAwesomeIcons.googlePlay,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
