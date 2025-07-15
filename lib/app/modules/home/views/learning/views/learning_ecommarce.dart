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
                title('Penggunaan'),
                subtitle('Getx'),
                subtitle('Sqflite'),
                subtitle('Custom Painter'),
                title('Kesulitan'),
                subtitle(
                    'Terasa sulit untuk bagian custom painter, karna penggunaan custom painter terasa kompleks. Terutama karna saya masih awam dalam menggunakannya'),
                title('Durasi'),
                subtitle('Sekitar 3 hari'),
                title('Hasil'),
                subtitleButton(
                    'https://github.com/rhamadhany/kasir-id/releases/latest'),
                title('Source'),
                subtitleButton(
                    'https://github.com/rhamadhany/kasir-id/tree/main/lib')
                // TextButton(
                //     onPressed: () async {
                //       await launchUrl(Uri.parse(
                //           'https://github.com/rhamadhany/kasir-id/tree/main/lib'));
                //     },
                //     child: subtitle(
                //         'https://github.com/rhamadhany/kasir-id/tree/main/lib')),
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget animationSubtitle({required Widget child}) {
    return Obx(() => AnimatedContainer(
          curve: Curves.fastEaseInToSlowEaseOut,
          duration: Duration(seconds: 2),
          height: controller.showSubtitle.value ? 25 : 0,
          child: child,
        ));
  }

  Widget subtitleButton(String url) {
    return animationSubtitle(
      child: TextButton(
          onPressed: () async {
            await launchUrl(Uri.parse(url));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(url),
          )),
    );
  }

  Widget subtitle(String value) {
    return animationSubtitle(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Text(value),
      ),
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
