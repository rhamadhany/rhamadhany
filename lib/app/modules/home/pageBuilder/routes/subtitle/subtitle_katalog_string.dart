import 'package:portofolio/main.dart';

class SubtitleKatalogString {
  static String get bnv2ray {
    return locale.languageCode == 'id'
        ? "Sebuah aplikasi V2Ray untuk Android yang dibangun menggunakan Flutter. Aplikasi ini dikembangkan untuk memudahkan penggunaan V2Ray di Android dengan dukungan fitur seperti pengeditan konfigurasi manual, penyaringan konfigurasi berdasarkan tipe, penyaringan berdasarkan favorit, pengaturan bug secara otomatis, hingga pencarian bug!"
        : "A V2Ray application for Android built with Flutter. This app is designed to simplify the use of V2Ray on Android, featuring manual configuration editing, filtering by type or favorites, automatic bug settings, and even bug searching!";
  }

  static String get appsKiller {
    return locale.languageCode == 'id'
        ? "Sebuah aplikasi yang berfungsi untuk menghentikan aplikasi Android yang sedang berjalan, membantu membebaskan penggunaan RAM dari aplikasi yang tidak diperlukan. Aplikasi ini juga dilengkapi dengan mode monitor untuk memantau penggunaan RAM pada setiap aplikasi. Namun, aplikasi ini memerlukan akses root atau dapat dijalankan melalui ADB."
        : "An Android app that kills running apps to free up RAM and includes a monitoring mode to track RAM usage per app. Requires root or can be run via ADB.";
  }

  static String get movinPlayer {
    return locale.languageCode == 'id'
        ? "Sebuah aplikasi yang dapat digunakan untuk memutar video maupun audio. Aplikasi ini juga mendukung fitur browser untuk melakukan streaming video dari URL, serta memungkinkan pengguna untuk memutar video langsung dari URL tanpa harus mengunduhnya terlebih dahulu."
        : "A mobile app for playing videos and audios. It supports streaming via URL input or direct playback from downloaded URLs without saving the file.";
  }

  static String get mediaCompression {
    return locale.languageCode == 'id'
        ? "Sebuah aplikasi yang dirancang khusus untuk melakukan kompresi berbagai jenis file media secara mudah dan efisien di perangkat Android. Aplikasi ini mendukung kompresi audio, video, foto, gambar, serta dokumen PDF dalam satu aplikasi terpadu. Dengan antarmuka yang sederhana namun powerful, pengguna dapat mengkompres file tanpa harus khawatir kehabisan ruang penyimpanan. Cocok digunakan oleh siapa saja yang sering bekerja dengan berbagai jenis file multimedia atau dokumen digital."
        : "A mobile app designed to compress various types of media files on Android, including audio, video, images, and PDFs. It allows users to reduce file size without sacrificing quality, making it easier to store or share media efficiently.";
  }

  static String get diskCleaner {
    return locale.languageCode == 'id'
        ? "Sebuah aplikasi Android yang dirancang untuk membersihkan dan mengoptimalkan penyimpanan perangkat. Aplikasi ini membantu pengguna menemukan serta menghapus file kosong, folder kosong, cache tidak berguna, hingga file sampah lainnya yang memenuhi ruang penyimpanan. Selain itu, aplikasi ini juga mendukung pencarian file besar dengan fitur filterisasi untuk mempermudah proses pemilahan. Pengguna juga dapat mencari dan membersihkan thumbnail gambar atau preview yang tersisa dari aplikasi lain."
        : "An Android app designed to clean and optimize device storage by scanning for empty files, large files, unused folders, and unnecessary thumbnails. It features filtering tools to help users efficiently manage their storage space.";
  }

  static String get ultrasonicGenerator {
    return locale.languageCode == 'id'
        ? "Sebuah aplikasi Android yang dirancang khusus untuk menghasilkan frekuensi ultrasonik secara akurat dan fleksibel. Aplikasi ini memungkinkan pengguna untuk menyesuaikan frekuensi sesuai kebutuhan, mulai dari rentang bawah hingga di atas ambang pendengaran manusia. Selain itu, aplikasi mendukung pengaturan durasi tanpa batas, sehingga cocok digunakan untuk berbagai keperluan eksperimen, penelitian, atau pengujian perangkat yang responsif terhadap frekuensi tinggi. Frekuensi yang dihasilkan dapat langsung disimpan ke dalam playlist atau diekspor ke penyimpanan perangkat untuk penggunaan lebih lanjut."
        : "An Android app designed to generate precise ultrasonic frequencies with customizable settings. It allows users to adjust frequency and duration freely, and supports saving tones to playlist or storage for later use.";
  }

  static String get vDiskAndroid {
    return locale.languageCode == 'id'
        ? "Sebuah aplikasi virtual disk pada android. aplikasi ini digunakan untuk menjadikan android sebagai virtual disk, aplikasi ini juga mendukung pembuatan file disk mentah secara cepat. kemudian langsung dapat digunakan sebagai virtual disk melalui fitur mount bukan hanya 1 disk aplikasi ini juga dapat langsung memount beberapa disk sekaligus. namun aplikasi ini harus digunakan melalui root dan mungkin tidak tersedia pada semua jenis perangkat karna perbedaan kernel android"
        : "";
  }

  static String text(index) {
    switch (index) {
      case 0:
        return bnv2ray;
      case 1:
        return appsKiller;
      case 2:
        return movinPlayer;
      case 3:
        return mediaCompression;
      case 4:
        return diskCleaner;
      case 5:
        return ultrasonicGenerator;
      case 6:
        return vDiskAndroid;
      default:
        return '';
    }
  }
}
