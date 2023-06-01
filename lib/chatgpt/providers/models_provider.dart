import 'package:flutter/widgets.dart';

import '../models/models_model.dart';
import '../services/api_service.dart';

class ModelsProvider with ChangeNotifier {
  String currenTmodels = "text-davinci-003";

  String get getCurrenTmodels {
    return currenTmodels;
  }

  void setcurrenTmodels(String newModel) {
    currenTmodels = newModel;
    notifyListeners();
  }

  List<ModelsModel> modelsList = [];

  List<ModelsModel> get getModelsList {
    return modelsList;
  }

  Future<List<ModelsModel>> getAllModels() async {
    modelsList = await ApiService.getModels();
    return modelsList;
  }
}
