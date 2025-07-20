import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portofolio/app/modules/home/views/learning/controllers/learning_controller.dart';
import 'package:portofolio/app/modules/home/views/learning/views/animation_learning_model.dart';
import 'package:portofolio/app/modules/home/views/learning/views/learning_view.dart';
import 'package:portofolio/main.dart';

class LearningSimpleEcommarceBloc extends GetView<LearningController> {
  const LearningSimpleEcommarceBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimationLearningModel(
      title: locale.languageCode == 'id'
          ? 'Membuat Aplikasi Simple E-commarce Dengan Bloc'
          : 'Making Simple E-commarce Apps With Bloc',
      children: [
        titleLearning(isId ? 'Penggunaan' : 'Usage'),
        subtitleLearning('Flutter_bloc'),
        subtitleLearning('Hydrated_bloc'),
        subtitleLearning('Freezed'),
        subtitleLearning('Custom Painter'),
        titleLearning(isId ? 'Kesulitan' : 'Difficulty'),
        subtitleLearning(isId
            ? 'Aplikasi pertama Saya yang menggunakan bloc, jadi saya perlu mempelari bloc terlebih dahulu. Berbeda dengan E-commarce Getx yang menggunakan sqlite disini saya menggunakan Hydrated untuk melakukan caching otomatis karna hanya aplikasi simple. Jadi kesulitan utama adalah penggunaan bloc, namun saya cukup memahami sekarang, hanya saja penggunaan kode menjadi terasa berlebihan jika dibandingkan dengan Getx sebelumnya.'
            : 'This is my first application using blocks, so I needed to learn them first. Unlike E-commerce with Getx Before, which uses sqlite, I`m using Hydrated for automatic caching because it`s a simple application. The main difficulty is using bloc, but I`m start understood bloc now, but the code usage feels a bit excessive compared to the previous Getx.'),
        titleLearning(isId ? 'Durasi' : 'Duration'),
        subtitleLearning(isId ? 'Sekitar 5 hari' : 'About 5 days'),
        titleLearning(isId ? 'Hasil' : 'Result'),
        subtitleButtonLearning(
            'https://github.com/rhamadhany/simple-ecommarce-bloc/releases/latest'),
        titleLearning(isId ? 'Source' : 'Sumber'),
        subtitleButtonLearning(
            'https://github.com/rhamadhany/simple-ecommarce-bloc/tree/main/lib')
      ],
    );
  }
}
