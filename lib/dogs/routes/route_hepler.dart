import 'dart:developer';

import 'package:get/get.dart';

import '../pages/dogs_detail_page.dart';
import '../pages/dogs_main_page.dart';
import '../pages/dogs_page.dart';

class RouteHelper {
  static const String initial = "/";
  static const String dogsMain = "/dogs";
  static const String dogDetail = "/dogs/detail";
  //static const String favDetail = "/fav-detail";

  static String getInitial() => '$initial';
  static String getDogs() => '$dogsMain';
  static String getDogDetail(int id, int currentType) =>
      '$dogDetail?id=$id&currentType=$currentType';

  static List<GetPage> routes = [
    GetPage(name: initial, fullscreenDialog: true, page: () => DogsPage()),
    GetPage(
      name: dogsMain,
      fullscreenDialog: true,
      page: () => DogsMainPage(),
    ),
    GetPage(
      name: dogDetail,
      fullscreenDialog: true,
      page: () {
        var id = Get.parameters['id'];
        var currentType = Get.parameters['currentType'];

        return DogsDetail(
            id: int.parse(id!), currentType: int.parse(currentType!));
      },
    ),
  ];
}
