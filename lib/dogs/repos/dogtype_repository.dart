import 'package:get/get.dart';

import '../api/api_client.dart';
import '../utils/app_constants.dart';

class DogTypeRepo extends GetxService {
  final ApiClient apiClient;
  DogTypeRepo({required this.apiClient});

  Future<Response> getDogTypeList() async {
    return await apiClient.getData(AppConstants.DOGTYPE_URI);
  }
}
