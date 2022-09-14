import 'package:apk_build_tools/network/api/common_api.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/app_pages.dart';

void main() {
  Get.lazyPut(() => CommonApi());
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    enableLog: true,
    initialRoute: AppPages.initial,
    getPages: AppPages.routes,
    scrollBehavior: MyCustomScrollBehavior(),
  ));
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    ...super.dragDevices,
    PointerDeviceKind.mouse,
  };
}