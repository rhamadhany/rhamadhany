import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:portofolio/app/modules/home/pageBuilder/routes/pages_builder_routes.dart';
import 'package:portofolio/app/modules/home/pageBuilder/views/playstore/playstore_button.dart';

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
          // Spacer(),
          Spacer(),
          Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Spacer(),
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  PagesBuilderRoutes.subtitle(index),
                  Spacer(),
                ],
              ),
              PlayStoreButton(
                index: index,
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
