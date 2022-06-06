import 'package:app_final/models/food_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class FoodServices extends ChangeNotifier {
  final String _urlBase = 'api.nal.usda.gov';
  final String _apiKey = 'RPyHBmbTK94sStbTfcF39QIvoqkGo3X25I5g1Gnj';

  Alimentos? propiedadesBanana;
  Alimentos? propiedadesApple;

  FoodServices() {
    getServiceBanana();
    getServiceApple();
  }

  //Obtencion de platano crudo Survey (FNDDS)
  getServiceBanana() async {
    final url = Uri.https(_urlBase, 'fdc/v1/food/1102653');
    final respuesta = await http.get(url, headers: {'X-Api-Key': _apiKey});

    final alimento = Alimentos.fromJson(respuesta.body);
    propiedadesBanana = alimento;
    notifyListeners();
  }

  //Obtencion de manzana crudo Survey (FNDDS)
  getServiceApple() async {
    final url = Uri.https(_urlBase, 'fdc/v1/food/1102644');
    final respuesta = await http.get(url, headers: {'X-Api-Key': _apiKey});

    final alimento = Alimentos.fromJson(respuesta.body);
    propiedadesApple = alimento;
    notifyListeners();
  }
}
