import 'package:flutter_webapp/dogs/repos/dogtype_repository.dart';
import 'package:get/get.dart';

import '../models/dogtype_model.dart';

class DogTypeController extends GetxController {
  final DogTypeRepo dogTypeRepo;

  List<dynamic> _dogTypeList = [];
  List<dynamic> get dogTypeList => _dogTypeList;

  late bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  List<dynamic> _dogsList = [];
  List<dynamic> get dogsList => _dogsList;

  DogTypeController({required this.dogTypeRepo});

  Future<void> getDogTypeList() async {
    Response response = await dogTypeRepo.getDogTypeList();
    if (response.statusCode == 200) {
      _dogTypeList = [];
      _dogTypeList.addAll(DogTypeModel.fromJson(response.body).data);

      _dogsList = [];
      _dogTypeList.forEach(((element) {
        _dogsList.addAll(element.dogs);
      }));

      _isLoaded = true;
      update();
    }
  }
}
