import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/app/modules/home/views/learning/controllers/learning_controller.dart';
import 'package:portofolio/app/modules/home/views/learning/views/animation_learning_model.dart';
import 'package:portofolio/app/modules/home/views/learning/views/learning_view.dart';
import 'package:portofolio/main.dart';

class LearningEcommarce extends GetView<LearningController> {
  const LearningEcommarce({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimationLearningModel(
      title: locale.languageCode == 'id'
          ? 'Membuat Aplikasi Simple E-commarce'
          : 'Making Simple E-commarce Apps',
      children: [
        titleLearning(isId ? 'Penggunaan' : 'Usage'),
        subtitleLearning('Getx'),
        subtitleLearning('Sqflite'),
        subtitleLearning('Custom Painter'),
        titleLearning(isId ? 'Kesulitan' : 'Difficulty'),
        subtitleLearning(isId
            ? 'Terasa sulit untuk bagian custom painter, karna penggunaan custom painter terasa kompleks. Terutama karna saya masih awam dalam menggunakannya'
            : 'The custom painter part felt difficult, as using it felt complex. Especially since I`m still a novice at using it.'),
        titleLearning(isId ? 'Durasi' : 'Duration'),
        subtitleLearning(isId ? 'Sekitar 3 hari' : 'About 3 days'),
        titleLearning(isId ? 'Hasil' : 'Result'),
        subtitleButtonLearning(
            'https://github.com/rhamadhany/kasir-id/releases/latest'),
        titleLearning(isId ? 'Source' : 'Sumber'),
        subtitleButtonLearning(
            'https://github.com/rhamadhany/kasir-id/tree/main/lib')
      ],
    );
  }
}
