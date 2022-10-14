import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_frame/flutter_web_frame.dart';
import 'package:flutter_webapp/dogs/controllers/dogtype_controller.dart';
import 'package:flutter_webapp/dogs/pages/dogs_detail_page.dart';
import 'package:flutter_webapp/dogs/pages/dogs_main_page.dart';
import 'package:flutter_webapp/dogs/pages/dogs_page.dart';
import 'package:get/get.dart';

import 'dogs/helper/dependencies.dart' as dep;
import 'dogs/routes/route_hepler.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //LOADING DOGS
    Get.find<DogTypeController>().getDogTypeList();
    double currentPageValue = 0.0;

    return FlutterWebFrame(
      maximumSize: Size(Get.width, Get.height),
      builder: (context) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          defaultTransition: Transition.fadeIn,
          scrollBehavior: MaterialScrollBehavior().copyWith(
            dragDevices: {
              PointerDeviceKind.mouse,
              PointerDeviceKind.touch,
              PointerDeviceKind.stylus,
              PointerDeviceKind.unknown
            },
          ),
          initialRoute: RouteHelper.initial,
          getPages: RouteHelper.routes,
          // GetPage(
          //   name: '/',
          //   page: () => StartPage(),
          // ),
          // GetPage(
          //   transition: Transition.fadeIn,
          //   name: '/catalogue',
          //   page: () => CataloguePage(),
          // ),
          // GetPage(
          //   transition: Transition.fadeIn,
          //   name: '/',
          //   page: () => DogsPage(),
          // ),
          // GetPage(
          //   transition: Transition.fadeIn,
          //   name: '/dogs/main',
          //   page: () => DogsMainPage(),
          // ),
          // GetPage(
          //   transition: Transition.fadeIn,
          //   name: '/dogs/detail',
          //   page: () => DogsDetail(),
          // ),
          // GetPage(
          //   transition: Transition.fadeIn,
          //   name: '/sneakers',
          //   page: () => SneakersPage(),
          // ),
          // GetPage(
          //   transition: Transition.fadeIn,
          //   name: '/sneakers/main',
          //   page: () => SneakersMainPage(),
          // ),
        );
      },
    );
  }
}
