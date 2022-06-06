// To parse this JSON data, do
//
//     final alimentos = alimentosFromMap(jsonString);

import 'dart:convert';

class Alimentos {
  Alimentos({
    required this.wweiaFoodCategory,
    required this.description,
    required this.foodAttributes,
    required this.foodCode,
    required this.inputFoods,
    required this.startDate,
    required this.endDate,
    required this.foodComponents,
    required this.foodClass,
    required this.fdcId,
    required this.publicationDate,
    required this.foodNutrients,
    required this.foodPortions,
    required this.dataType,
  });

  WweiaFoodCategory wweiaFoodCategory;
  String description;
  List<FoodAttribute> foodAttributes;
  String foodCode;
  List<InputFood> inputFoods;
  String startDate;
  String endDate;
  List<dynamic> foodComponents;
  String foodClass;
  int fdcId;
  String publicationDate;
  List<FoodNutrient> foodNutrients;
  List<FoodPortion> foodPortions;
  String dataType;

  factory Alimentos.fromJson(String str) => Alimentos.fromMap(json.decode(str));

  factory Alimentos.fromMap(Map<String, dynamic> json) => Alimentos(
        wweiaFoodCategory: WweiaFoodCategory.fromMap(json["wweiaFoodCategory"]),
        description: json["description"],
        foodAttributes: List<FoodAttribute>.from(
            json["foodAttributes"].map((x) => FoodAttribute.fromMap(x))),
        foodCode: json["foodCode"],
        inputFoods: List<InputFood>.from(
            json["inputFoods"].map((x) => InputFood.fromMap(x))),
        startDate: json["startDate"],
        endDate: json["endDate"],
        foodComponents:
            List<dynamic>.from(json["foodComponents"].map((x) => x)),
        foodClass: json["foodClass"],
        fdcId: json["fdcId"],
        publicationDate: json["publicationDate"],
        foodNutrients: List<FoodNutrient>.from(
            json["foodNutrients"].map((x) => FoodNutrient.fromMap(x))),
        foodPortions: List<FoodPortion>.from(
            json["foodPortions"].map((x) => FoodPortion.fromMap(x))),
        dataType: json["dataType"],
      );
}

class FoodAttribute {
  FoodAttribute({
    required this.id,
    required this.value,
    required this.name,
    required this.foodAttributeType,
  });

  int id;
  String value;
  String name;
  FoodAttributeType foodAttributeType;

  factory FoodAttribute.fromJson(String str) =>
      FoodAttribute.fromMap(json.decode(str));

  factory FoodAttribute.fromMap(Map<String, dynamic> json) => FoodAttribute(
        id: json["id"],
        value: json["value"],
        name: json["name"],
        foodAttributeType: FoodAttributeType.fromMap(json["foodAttributeType"]),
      );
}

class FoodAttributeType {
  FoodAttributeType({
    required this.id,
    required this.name,
    required this.description,
  });

  int id;
  String name;
  String description;

  factory FoodAttributeType.fromJson(String str) =>
      FoodAttributeType.fromMap(json.decode(str));

  factory FoodAttributeType.fromMap(Map<String, dynamic> json) =>
      FoodAttributeType(
        id: json["id"],
        name: json["name"],
        description: json["description"],
      );
}

class FoodNutrient {
  FoodNutrient({
    required this.nutrient,
    required this.type,
    required this.id,
    required this.amount,
  });

  Nutrient nutrient;
  String type;
  int id;
  double amount;

  factory FoodNutrient.fromJson(String str) =>
      FoodNutrient.fromMap(json.decode(str));

  factory FoodNutrient.fromMap(Map<String, dynamic> json) => FoodNutrient(
        nutrient: Nutrient.fromMap(json["nutrient"]),
        type: json["type"],
        id: json["id"] == null ? null : json["id"],
        amount: json["amount"] == null ? null : json["amount"].toDouble(),
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

class FoodPortion {
  FoodPortion({
    required this.id,
    required this.portionDescription,
    required this.gramWeight,
    required this.sequenceNumber,
    required this.modifier,
    required this.measureUnit,
  });

  int id;
  String portionDescription;
  int gramWeight;
  int sequenceNumber;
  String modifier;
  MeasureUnit measureUnit;

  factory FoodPortion.fromJson(String str) =>
      FoodPortion.fromMap(json.decode(str));

  factory FoodPortion.fromMap(Map<String, dynamic> json) => FoodPortion(
        id: json["id"],
        portionDescription: json["portionDescription"],
        gramWeight: json["gramWeight"].toInt(),
        sequenceNumber: json["sequenceNumber"],
        modifier: json["modifier"],
        measureUnit: MeasureUnit.fromMap(json["measureUnit"]),
      );
}

class MeasureUnit {
  MeasureUnit({
    required this.id,
    required this.name,
    required this.abbreviation,
  });

  int id;
  String name;
  String abbreviation;

  factory MeasureUnit.fromJson(String str) =>
      MeasureUnit.fromMap(json.decode(str));

  factory MeasureUnit.fromMap(Map<String, dynamic> json) => MeasureUnit(
        id: json["id"],
        name: json["name"],
        abbreviation: json["abbreviation"],
      );
}

class InputFood {
  InputFood({
    required this.id,
    required this.foodDescription,
    required this.ingredientDescription,
    required this.ingredientWeight,
    required this.portionCode,
    required this.portionDescription,
    required this.sequenceNumber,
    required this.ingredientCode,
    required this.unit,
    required this.amount,
  });

  int id;
  String foodDescription;
  String ingredientDescription;
  int ingredientWeight;
  String portionCode;
  String portionDescription;
  int sequenceNumber;
  int ingredientCode;
  String unit;
  int amount;

  factory InputFood.fromJson(String str) => InputFood.fromMap(json.decode(str));

  factory InputFood.fromMap(Map<String, dynamic> json) => InputFood(
        id: json["id"],
        foodDescription: json["foodDescription"],
        ingredientDescription: json["ingredientDescription"],
        ingredientWeight: json["ingredientWeight"].toInt(),
        portionCode: json["portionCode"],
        portionDescription: json["portionDescription"],
        sequenceNumber: json["sequenceNumber"],
        ingredientCode: json["ingredientCode"],
        unit: json["unit"],
        amount: json["amount"].toInt(),
      );
}

class WweiaFoodCategory {
  WweiaFoodCategory({
    required this.wweiaFoodCategoryCode,
    required this.wweiaFoodCategoryDescription,
  });

  int wweiaFoodCategoryCode;
  String wweiaFoodCategoryDescription;

  factory WweiaFoodCategory.fromJson(String str) =>
      WweiaFoodCategory.fromMap(json.decode(str));

  factory WweiaFoodCategory.fromMap(Map<String, dynamic> json) =>
      WweiaFoodCategory(
        wweiaFoodCategoryCode: json["wweiaFoodCategoryCode"],
        wweiaFoodCategoryDescription: json["wweiaFoodCategoryDescription"],
      );
}
