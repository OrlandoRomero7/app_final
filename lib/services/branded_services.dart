import 'package:app_final/models/branded_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class BrandedServices extends ChangeNotifier {
  final String _urlBase = 'api.nal.usda.gov';
  final String _apiKey = 'RPyHBmbTK94sStbTfcF39QIvoqkGo3X25I5g1Gnj';

  String propiedadesPizzaIn = "";
  BrandedModel? propiedadesMilk;
  BrandedModel? propiedadesBread;

  BrandedServices() {
    getServiceMilkNutrients();
    getServiceBreadNutrients();
    getServicePizza();
  }

  //Obtencion de Ingredientes de pizza Connie's, dataType Branded Foods
  getServicePizza() async {
    final url = Uri.https(_urlBase, 'fdc/v1/food/2032005');
    final respuesta = await http.get(url, headers: {'X-Api-Key': _apiKey});

    final alimento = BrandedModel.fromJson(respuesta.body);
    propiedadesPizzaIn = alimento.ingredients;
    notifyListeners();
  }

  //Obtencion de Nutrientes leche HP Hood LLC, dataType Branded Foods
  getServiceMilkNutrients() async {
    final url = Uri.https(_urlBase, 'fdc/v1/food/1984025');
    final respuesta = await http.get(url, headers: {'X-Api-Key': _apiKey});

    final alimento = BrandedModel.fromJson(respuesta.body);
    propiedadesMilk = alimento;
    notifyListeners();
  }

  //Obtencion de Nutrientes pan Panaderia Del Cielo, dataType Branded Foods
  getServiceBreadNutrients() async {
    final url = Uri.https(_urlBase, 'fdc/v1/food/2071481');
    final respuesta = await http.get(url, headers: {'X-Api-Key': _apiKey});

    final alimento = BrandedModel.fromJson(respuesta.body);
    propiedadesBread = alimento;
    notifyListeners();
  }
}
