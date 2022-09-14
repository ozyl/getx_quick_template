
import 'package:get/get.dart';

import '../pages/home/view.dart';

part 'app_routers.dart';

class AppPages {
  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => HomePage(),
    ),
  ];
}