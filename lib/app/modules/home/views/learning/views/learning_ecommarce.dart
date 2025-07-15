import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/app/modules/home/views/learning/controllers/learning_controller.dart';
import 'package:portofolio/main.dart';
import 'package:url_launcher/url_launcher.dart';

class LearningEcommarce extends GetView<LearningController> {
  const LearningEcommarce({super.key});

  @override
  Widget build(BuildContext context) {
    final width = Get.width.obs;
    return Obx(() {
      return SizedBox(
        child: AnimatedOpacity(
          opacity: controller.showExpansion.value ? 1 : 0,
          duration: Duration(seconds: 1),
          child: AnimatedContainer(
            width: width.value,
            duration: Duration(seconds: 1),
            curve: Curves.decelerate,
            child: ExpansionTile(
              onExpansionChanged: (value) {
                if (value) {
                  width.value = Get.width * 0.85;
                  Future.delayed(Duration(seconds: 1)).then((_) {
                    width.value = Get.width;
                  });
                  Future.delayed(Duration(seconds: 2)).then((_) {
                    controller.showSubtitle.value = value;
                  });
                }
              },
              childrenPadding:
                  EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              title: Text(
                locale.languageCode == 'id'
                    ? 'Membuat Simple Aplikasi E-commarce'
                    : 'Making Simple E-commarce Apps',
                style: GoogleFonts.michroma(),
              ),
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title(isId ? 'Penggunaan' : 'Usage'),
                subtitle('Getx'),
                subtitle('Sqflite'),
                subtitle('Custom Painter'),
                title(isId ? 'Kesulitan' : 'Difficulty'),
                subtitle(isId
                    ? 'Terasa sulit untuk bagian custom painter, karna penggunaan custom painter terasa kompleks. Terutama karna saya masih awam dalam menggunakannya'
                    : 'The custom painter part felt difficult, as using it felt complex. Especially since I`m still a novice at using it.'),
                title(isId ? 'Durasi' : 'Duration'),
                subtitle(isId ? 'Sekitar 3 hari' : 'About 3 days'),
                title(isId ? 'Hasil' : 'Result'),
                subtitleButton(
                    'https://github.com/rhamadhany/kasir-id/releases/latest'),
                title('Source'),
                subtitleButton(
                    'https://github.com/rhamadhany/kasir-id/tree/main/lib')
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget subtitleButton(String url) {
    return TextButton(
        onPressed: () async {
          await launchUrl(Uri.parse(url));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(url),
        ));
  }

  Widget subtitle(String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Text(value),
    );
  }

  Widget title(String value) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          size: 16,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          value,
          style: GoogleFonts.aladin(fontSize: 18),
        ),
      ],
    );
  }
}
