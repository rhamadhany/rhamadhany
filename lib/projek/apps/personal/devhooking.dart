import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portofolio/projek/apps/play_store/pop_menu_app_bar.dart';
import 'package:portofolio/controller/text_animation.dart';
import 'package:portofolio/projek/apps/thumbnail_details.dart';

class DevHooking extends GetView<TextAnimation> {
  static final text1 =
      '''Hook Return Value: Allows me to change the return value of a method, useful for faking results or forcing specific execution flows.
Hook Param Value: Allows me to modify the values of parameters passed to a method. This is useful for testing how an application reacts to different inputs or for bypassing validation.
Hook Static Field: Allows me to change the value of a static field within a class.
Hook Instance Field: Allows me to change the value of an instance field (a variable belonging to an object) after or before a method is executed.
Record Return Value: Records the return value of a method.
Record Param Value: Records the values of parameters passed to a method.
Record Static Field: Records the values of static fields for monitoring.
Record Instance Field: Records the values of instance fields.
Break Method: Halts the execution of a method. Useful for debugging and execution flow analysis.
Hook Record JSON: Converts JSON to objects using Gson. Useful if you don't know the JSON format of the object.
Replace Hot Dex: Allows dynamic replacement of dex (experimental).''';

  static final List<String> thumbail = [
    'assets/devhooking_1.png',
    'assets/devhooking_2.png',
    'assets/devhooking_3.png',
    'assets/devhooking_4.png',
    'assets/devhooking_5.png',
  ];
  const DevHooking({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Row(
          children: [
            FaIcon(
              FontAwesomeIcons.flutter,
            ),
            Spacer(),
            PopMenuAppBar(),
          ],
        ),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(color: Colors.black),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListThumbnailApps(
                  list: thumbail,
                ),
                Obx(() {
                  final color1 = controller.color1.value;
                  final color2 = controller.color2.value;
                  final color3 = controller.color3.value;
                  return ShaderMask(
                    shaderCallback: (Rect bound) {
                      return LinearGradient(colors: [color1, color2, color3])
                          .createShader(bound);
                    },
                    child: Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        'DevHooking: Hooking Android Apps Xposed Module!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                }),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4),
                    child: Text(
                      textAlign: TextAlign.center,
                      'DevHooking designed for reverse engineering Android applications, specifically for personal use. It allows me to monitor and modify the behavior of other applications without altering their original source code. With DevHooking, I can observe how an application works, test various scenarios, and even dynamically modify its functionality within a controlled environment, with the goal of enhancing my understanding of application security and architecture.',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Here are the key features offered by DevHooking:',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 16),
                ),
                ...text1.split('\n').map((t) {
                  return Text(
                    '• $t',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  );
                }),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    'DevHooking is a powerful tool and should be used with caution. It is intended only for personal and non-commercial use.',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
