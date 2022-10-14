import 'package:flutter_webapp/dogs/controllers/dogtype_controller.dart';
import 'package:get/get.dart';

import '../api/api_client.dart';
import '../repos/dogtype_repository.dart';
import '../utils/app_constants.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repo
  Get.lazyPut(() => DogTypeRepo(apiClient: Get.find()));
  //Get.lazyPut(() => FavRepo());
  //Get.lazyPut(() => CategoryRepo(apiClient: Get.find()));

  //controller
  Get.lazyPut(() => DogTypeController(dogTypeRepo: Get.find()));
  //Get.lazyPut(() => FavController(favRepo: Get.find()));
  //Get.lazyPut(() => CategoryController(categoryRepo: Get.find()));
}