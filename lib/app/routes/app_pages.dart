import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/nameanimation/bindings/nameanimation_binding.dart';
import '../modules/home/nameanimation/views/nameanimation_view.dart';
import '../modules/home/pageBuilder/bindings/page_builder_binding.dart';
import '../modules/home/pageBuilder/views/page_builder_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      bindings: [HomeBinding(), PageBuilderBinding(), NameanimationBinding()],
      children: [
        GetPage(
          name: _Paths.PAGE_BUILDER,
          page: () => const PageBuilderView(),
          binding: PageBuilderBinding(),
        ),
        GetPage(
          name: _Paths.NAMEANIMATION,
          page: () => const NameanimationView(),
          binding: NameanimationBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
