import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/app/modules/home/pageBuilder/routes/subtitle/subtitle_katalog_string.dart';

class SubtitleKatalog extends StatelessWidget {
  const SubtitleKatalog({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.5,
      child: RichText(
        // overflow: TextOverflow.ellipsis,
        softWrap: true,
        text: TextSpan(children: [
          TextSpan(
              style: GoogleFonts.kaushanScript(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
              text: SubtitleKatalogString.text(index))
        ]),
      ),
    );
  }
}
