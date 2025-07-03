import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portofolio/app/modules/home/views/skill/skill_model.dart';
import 'package:portofolio/main.dart';

class ListSkill {
  static SkillModel get git {
    return SkillModel(
      label: 'Github',
      icon: FontAwesomeIcons.github,
      contentDialog: locale.languageCode == 'id'
          ? 'Saya memiliki pemahaman dasar mengenai GitHub untuk keperluan pengembangan perangkat lunak. '
              'Mampu membuat repository, mengelola branch, melakukan clone, menyimpan perubahan menggunakan commit, '
              'serta melakukan push dan pull untuk sinkronisasi dengan remote repository.'
          : 'I have basic understanding of GitHub for software development purposes. '
              'Able to create repositories, manage branches, perform cloning, save changes with commits, '
              'and push or pull updates to and from a remote repository.',
    );
  }

  static SkillModel get vscode {
    return SkillModel(
      label: 'VSCode',
      icon: FontAwesomeIcons.code,
      contentDialog: locale.languageCode == 'id'
          ? 'Saya memiliki pemahaman dalam penggunaan Visual Studio Code (VSCode) untuk tujuan pemrograman. Saya umumnya menggunakannya untuk pengembangan aplikasi Android menggunakan Flutter serta melakukan debugging langsung ke perangkat fisik karena laptop saya tidak cukup memadai untuk menjalankan emulator sekaligus proses debugging secara bersamaan. Selain itu, saya pernah membuat ekstensi sederhana untuk VSCode menggunakan JavaScript untuk keperluan pribadi, meskipun saya tidak terlalu mahir dalam JavaScript karena hanya mempelajarinya sesekali saat membuat ekstensi tersebut.'
          : 'I have a good understanding of using Visual Studio Code (VSCode) for programming purposes. I commonly use it for Android app development with Flutter and perform debugging directly on physical devices since my laptop isn’t powerful enough to handle both the emulator and debugging processes simultaneously. Additionally, I’ve created a simple VSCode extension using JavaScript for personal use, although I’m not highly proficient in JavaScript as I only learned it briefly during the development of that extension.',
    );
  }

  static SkillModel get flutter {
    return SkillModel(
      label: "Flutter",
      icon: FontAwesomeIcons.flutter,
      contentDialog: locale.languageCode == 'id'
          ? 'Saya memiliki pemahaman dalam pembuatan aplikasi Android menggunakan Flutter. Saya telah menyelesaikan beberapa aplikasi Android yang dibangun dengan Flutter, baik untuk tujuan publikasi di Play Store maupun penggunaan pribadi. Kebanyakan aplikasi yang saya buat merupakan aplikasi alat (utility) yang tidak memerlukan server, baik yang berbasis root maupun non-root. Hal ini dikarenakan saya bekerja secara mandiri dan memiliki keterbatasan sumber daya, sehingga lebih fokus pada aplikasi offline. Namun, jika ada perusahaan yang bersedia merekrut saya, saya siap untuk terus belajar dan meningkatkan kemampuan serta keterampilan saya, baik dalam pengembangan aplikasi offline maupun yang menggunakan REST API.'
          : 'I have a solid understanding of building Android applications using Flutter. I have completed several Flutter-based Android apps, both for publishing on the Play Store and for personal use. Most of the applications I’ve developed are utility tools that do not require a backend server, including both rooted and non-rooted applications. This is mainly because I work independently with limited resources, so offline apps are my primary focus. However, if given the opportunity to join a company, I am ready to keep learning and improving my skills in both offline application development and integration with REST APIs.',
    );
  }

  static SkillModel get blender {
    return SkillModel(
      label: "Blender",
      icon: FontAwesomeIcons.blender,
      contentDialog: locale.languageCode == 'id'
          ? 'Saya memiliki pemahaman dasar dalam penggunaan Blender untuk membuat desain 2D/3D sederhana. Saya biasanya menggunakannya untuk membuat konsep visual seperti desain future (feature graphic) atau screenshot untuk Play Store. Meskipun sebenarnya hal ini tidak terlalu umum karena kebanyakan orang menggunakan Canva untuk desain semacam ini, saya lebih terbiasa menggunakan Blender meskipun hanya untuk keperluan sederhana. Sayangnya, kemampuan laptop saya yang hanya dilengkapi GPU Intel generasi lama membatasi proses rendering, sehingga saya harus mengandalkan CPU yang jauh lebih lambat dan memakan banyak waktu.'
          : 'I have a basic understanding of using Blender to create simple 2D/3D designs. I usually use it for designing promotional visuals such as feature graphics or mockup screenshots for the Play Store. While this isn’t a typical use case — as most people opt for tools like Canva — I’m more accustomed to working with Blender even for basic design tasks. Unfortunately, my laptop’s outdated Intel integrated GPU limits rendering performance, so I rely on CPU rendering, which is significantly slower and time-consuming.',
    );
  }

  static SkillModel get microsoft {
    return SkillModel(
      label: "Microsoft Office",
      icon: FontAwesomeIcons.microsoft,
      contentDialog: locale.languageCode == 'id'
          ? 'Saya memiliki pemahaman dasar dalam penggunaan Microsoft Office seperti Word, Excel, dan PowerPoint. Hal ini didukung oleh pengalaman mengikuti les sekolah saat masa SMA. Namun, sudah cukup lama saya tidak menggunakannya karena jarang ada kebutuhan di bagian tersebut. Selain itu, saya saat ini menggunakan sistem operasi Linux di laptop saya, sehingga sebagai alternatif, saya biasanya menggunakan LibreOffice — meskipun pun demikian, penggunaannya tetap terbatas. Dengan demikian, kemampuan saya mungkin sudah agak berkurang. Namun, jika suatu saat dibutuhkan, saya siap untuk mempelajari kembali dan meningkatkan kemampuan tersebut.'
          : 'I have a basic understanding of Microsoft Office applications such as Word, Excel, and PowerPoint. This came from attending school-organized classes during my high school years. However, it has been quite a while since I last used them regularly, as I rarely have the need for office software nowadays. Moreover, I currently use Linux on my laptop, so I typically rely on LibreOffice as an alternative — although even then, I use it very infrequently. As a result, my proficiency may have diminished over time. That said, if needed, I’m fully prepared to relearn and improve my skills when necessary.',
    );
  }

  static final list = [flutter, vscode, blender, git, microsoft];

  static SkillModel skill(int index) => list[index];
}
