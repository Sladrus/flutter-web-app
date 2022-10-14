import 'dart:developer';

import 'package:get/get.dart';

import '../utils/app_constants.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String appBaseUrl;

  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
    token = AppConstants.TOKEN;
    allowAutoSignedCert = true;
    _mainHeaders = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }

  Future<Response> getData(String uri) async {
    try {
      Response response = await get(uri);
      //log(response.toString());
      return response;
      
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
