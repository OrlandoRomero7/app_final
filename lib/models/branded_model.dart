// To parse this JSON data, do
//
//     final alimentosIngredientes = alimentosIngredientesFromMap(jsonString);

//modelo tomado de un fdcId de pizza Connies, dataType: Branded Foods

import 'dart:convert';

class BrandedModel {
  BrandedModel({
    required this.discontinuedDate,
    required this.foodComponents,
    required this.foodAttributes,
    required this.foodPortions,
    required this.fdcId,
    required this.description,
    required this.publicationDate,
    required this.foodNutrients,
    required this.dataType,
    required this.foodClass,
    required this.modifiedDate,
    required this.availableDate,
    required this.brandOwner,
    required this.brandName,
    required this.dataSource,
    required this.brandedFoodCategory,
    required this.gtinUpc,
    required this.ingredients,
    required this.marketCountry,
    required this.servingSize,
    required this.servingSizeUnit,
    required this.packageWeight,
    required this.foodUpdateLog,
    required this.labelNutrients,
    required this.subbrandName,
    required this.notaSignificantSourceOf,
    required this.householdServingFullText,
  });

  String discontinuedDate;
  List<dynamic>? foodComponents;
  List<FoodAttribute> foodAttributes;
  List<dynamic>? foodPortions;
  int fdcId;
  String description;
  String publicationDate;
  List<FoodNutrient>? foodNutrients;
  String dataType;
  String foodClass;
  String modifiedDate;
  String availableDate;
  String brandOwner;
  String brandName;
  String dataSource;
  String brandedFoodCategory;
  String gtinUpc;
  String ingredients;
  String marketCountry;
  int servingSize;
  String servingSizeUnit;
  String packageWeight;
  List<BrandedModel>? foodUpdateLog;
  Map<String, LabelNutrient>? labelNutrients;
  String subbrandName;
  String notaSignificantSourceOf;
  String householdServingFullText;

  factory BrandedModel.fromJson(String str) =>
      BrandedModel.fromMap(json.decode(str));

  factory BrandedModel.fromMap(Map<String, dynamic> json) => BrandedModel(
        discontinuedDate: json["discontinuedDate"],
        foodComponents: json["foodComponents"] == null
            ? null
            : List<dynamic>.from(json["foodComponents"].map((x) => x)),
        foodAttributes: List<FoodAttribute>.from(
            json["foodAttributes"].map((x) => FoodAttribute.fromMap(x))),
        foodPortions: json["foodPortions"] == null
            ? null
            : List<dynamic>.from(json["foodPortions"].map((x) => x)),
        fdcId: json["fdcId"],
        description: json["description"],
        publicationDate: json["publicationDate"],
        foodNutrients: json["foodNutrients"] == null
            ? null
            : List<FoodNutrient>.from(
                json["foodNutrients"].map((x) => FoodNutrient.fromMap(x))),
        dataType: json["dataType"],
        foodClass: json["foodClass"],
        modifiedDate: json["modifiedDate"],
        availableDate: json["availableDate"],
        brandOwner: json["brandOwner"],
        brandName: json["brandName"] == null ? null : json["brandName"],
        dataSource: json["dataSource"],
        brandedFoodCategory: json["brandedFoodCategory"],
        gtinUpc: json["gtinUpc"],
        ingredients: json["ingredients"],
        marketCountry: json["marketCountry"],
        servingSize: json["servingSize"].toInt(),
        servingSizeUnit: json["servingSizeUnit"],
        packageWeight:
            json["packageWeight"] == null ? null : json["packageWeight"],
        foodUpdateLog: json["foodUpdateLog"] == null
            ? null
            : List<BrandedModel>.from(
                json["foodUpdateLog"].map((x) => BrandedModel.fromMap(x))),
        labelNutrients: json["labelNutrients"] == null
            ? null
            : Map.from(json["labelNutrients"]).map((k, v) =>
                MapEntry<String, LabelNutrient>(k, LabelNutrient.fromMap(v))),
        subbrandName:
            json["subbrandName"] == null ? null : json["subbrandName"],
        notaSignificantSourceOf: json["notaSignificantSourceOf"] == null
            ? null
            : json["notaSignificantSourceOf"],
        householdServingFullText: json["householdServingFullText"] == null
            ? null
            : json["householdServingFullText"],
      );
}

class FoodAttribute {
  FoodAttribute({
    required this.id,
    required this.value,
    required this.name,
  });

  int id;
  int value;
  String name;

  factory FoodAttribute.fromJson(String str) =>
      FoodAttribute.fromMap(json.decode(str));

  factory FoodAttribute.fromMap(Map<String, dynamic> json) => FoodAttribute(
        id: json["id"],
        value: json["value"],
        name: json["name"],
      );
}

class FoodNutrient {
  FoodNutrient({
    required this.type,
    required this.nutrient,
    required this.foodNutrientDerivation,
    required this.id,
    required this.amount,
  });

  String type;
  Nutrient nutrient;
  FoodNutrientDerivation foodNutrientDerivation;
  int id;
  double amount;

  factory FoodNutrient.fromJson(String str) =>
      FoodNutrient.fromMap(json.decode(str));

  factory FoodNutrient.fromMap(Map<String, dynamic> json) => FoodNutrient(
        type: json["type"],
        nutrient: Nutrient.fromMap(json["nutrient"]),
        foodNutrientDerivation:
            FoodNutrientDerivation.fromMap(json["foodNutrientDerivation"]),
        id: json["id"],
        amount: json["amount"].toDouble(),
      );
}

class FoodNutrientDerivation {
  FoodNutrientDerivation({
    required this.id,
    required this.code,
    required this.description,
  });

  int id;
  String code;
  String description;

  factory FoodNutrientDerivation.fromJson(String str) =>
      FoodNutrientDerivation.fromMap(json.decode(str));

  factory FoodNutrientDerivation.fromMap(Map<String, dynamic> json) =>
      FoodNutrientDerivation(
        id: json["id"],
        code: json["code"],
        description: json["description"],
      );
}

class Nutrient {
  Nutrient({
    required this.id,
    required this.number,
    required this.name,
    required this.rank,
    required this.unitName,
  });

  int id;
  String number;
  String name;
  int rank;
  String unitName;

  factory Nutrient.fromJson(String str) => Nutrient.fromMap(json.decode(str));

  factory Nutrient.fromMap(Map<String, dynamic> json) => Nutrient(
        id: json["id"],
        number: json["number"],
        name: json["name"],
        rank: json["rank"],
        unitName: json["unitName"],
      );
}

class LabelNutrient {
  LabelNutrient({
    required this.value,
  });

  double value;

  factory LabelNutrient.fromJson(String str) =>
      LabelNutrient.fromMap(json.decode(str));

  factory LabelNutrient.fromMap(Map<String, dynamic> json) => LabelNutrient(
        value: json["value"].toDouble(),
      );
}
