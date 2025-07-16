import 'package:flutter/material.dart';
import 'package:portofolio/app/modules/home/views/learning/views/animation_learning_model.dart';
import 'package:portofolio/app/modules/home/views/learning/views/learning_view.dart';
import 'package:portofolio/main.dart';

class LearningChatAI extends StatelessWidget {
  const LearningChatAI({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimationLearningModel(
      title:
          isId ? 'Membuat Aplikasi Simple Chat AI' : 'Make Simple Apps Chat AI',
      children: [
        titleLearning(isId ? 'Penggunaan' : 'Usage'),
        subtitleLearning('Getx'),
        subtitleLearning('GetStorage'),
        subtitleLearning('Dio'),
        titleLearning(isId ? 'Kesulitan' : 'Difficulty'),
        subtitleLearning(isId
            ? 'aplikasi ini cukup simple karna hanya beberapa implementasi yang ditambahkan. hanya seperti fitur utama chat dan penyimpanan api key, saya tidak mengimplementasikan fitur history karna  ini hanya simple apps. jadi hanya sedikit sulit pada bagian pengekstrakan response rest api, namun tidak juga terlalu sulit.'
            : "This application is simple because only a few implementations were added. It only includes the main chat and API key storage features. I didn't implement the history feature because it's a simple app. So, extracting the rest api response is a bit challenging, but not too difficult."),
        titleLearning(isId ? 'Hasil' : 'Result'),
        subtitleButtonLearning('https://simple-chat-ai.pages.dev'),
        titleLearning(isId ? 'Source' : 'Sumber'),
        subtitleButtonLearning(
            'https://github.com/rhamadhany/simple-chat-ai/tree/main/lib')
      ],
    );
  }
}
