import 'package:app_final/services/food_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NutrientsBanana extends StatelessWidget {
  const NutrientsBanana({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final foodDataServices = Provider.of<FoodServices>(context);
    //print(foodDataServices.alimentos?.description);
    if (foodDataServices.propiedadesBanana == null) {
      return Container(
        color: Colors.yellow.shade200,
        child: const Center(
          child: CircularProgressIndicator(color: Colors.black),
        ),
      );
    }
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              "Banana",
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Colors.amber),
        body: ListView(children: [
          Container(
            color: Color(0xffffffcc),
            child: Center(
              child: Column(
                //mainAxisAlignment: MainAxisSize.max,
                children: [
                  RichType(),
                  RichCategory(),
                  const SizedBox(height: 10),
                  const Text(
                    "Datos de Nutrición",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Tamaño de la porción 100 g",
                    style: TextStyle(fontSize: 26),
                  ),
                  const Divider(
                    height: 10,
                    thickness: 5,
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text("Nutriente"),
                      Text("Cantidad"),
                      Text("Unidad")
                    ],
                  ),
                  Card(
                      child: SizedBox(
                          height: 450,
                          width: 350,
                          child: Column(
                            children: [
                              Expanded(
                                child: ListView.builder(
                                    itemCount: foodDataServices
                                        .propiedadesBanana!
                                        .foodNutrients
                                        .length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                                "${foodDataServices.propiedadesBanana!.foodNutrients[index].nutrient.name}\t\t"
                                                "${foodDataServices.propiedadesBanana!.foodNutrients[index].amount}\t\t"
                                                "${foodDataServices.propiedadesBanana!.foodNutrients[index].nutrient.unitName}",
                                                style: const TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black)),
                                            const Divider(
                                              height: 5,
                                              thickness: 2,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                      );
                                    }),
                              )
                            ],
                          )),
                      margin: const EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(
                          color: Colors.black,
                          width: 5.0,
                        ),
                      )),
                ],
              ),
            ),
          ),
        ]));
  }
}

class RichType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final foodDataServices = Provider.of<FoodServices>(context);
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      RichText(
        text: TextSpan(
          text: 'DataType: ',
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
          children: <TextSpan>[
            TextSpan(
              text: foodDataServices.propiedadesBanana!.dataType,
              style: DefaultTextStyle.of(context).style,
            )
          ],
        ),
      ),
      RichText(
        text: TextSpan(
          text: 'FDC ID: ',
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
          children: <TextSpan>[
            TextSpan(
              text: foodDataServices.propiedadesBanana!.fdcId.toString(),
              style: DefaultTextStyle.of(context).style,
            )
          ],
        ),
      ),
    ]);
  }
}

class RichCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final foodDataServices = Provider.of<FoodServices>(context);
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      RichText(
        text: TextSpan(
          text: 'Food Category: ',
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
          children: <TextSpan>[
            TextSpan(
              text: foodDataServices.propiedadesBanana!.wweiaFoodCategory
                  .wweiaFoodCategoryDescription,
              style: DefaultTextStyle.of(context).style,
            )
          ],
        ),
      ),
      RichText(
        text: TextSpan(
          text: 'FDC Published: ',
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
          children: <TextSpan>[
            TextSpan(
              text: foodDataServices.propiedadesBanana!.publicationDate,
              style: DefaultTextStyle.of(context).style,
            )
          ],
        ),
      ),
    ]);
  }
}
