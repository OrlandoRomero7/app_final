import 'package:app_final/services/branded_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NutrientsBread extends StatelessWidget {
  const NutrientsBread({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final foodDataServices = Provider.of<BrandedServices>(context);
    //print(foodDataServices.alimentos?.description);
    if (foodDataServices.propiedadesBread == null) {
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
            "Bread",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 156, 103, 35),
        ),
        body: ListView(children: [
          Container(
            color: Color.fromARGB(255, 236, 204, 139),
            child: Center(
              child: Column(
                //mainAxisAlignment: MainAxisSize.max,
                children: [
                  RichDataType(),
                  RichBrand(),
                  RichCountry(),
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
                                        .propiedadesBread!
                                        .foodNutrients!
                                        .length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                                "${foodDataServices.propiedadesBread!.foodNutrients![index].nutrient.name}\t\t"
                                                "${foodDataServices.propiedadesBread!.foodNutrients![index].amount}\t\t"
                                                "${foodDataServices.propiedadesBread!.foodNutrients![index].nutrient.unitName}",
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

class RichDataType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final foodDataServices = Provider.of<BrandedServices>(context);
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      RichText(
        text: TextSpan(
          text: 'DataType: ',
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
          children: <TextSpan>[
            TextSpan(
              text: foodDataServices.propiedadesBread!.dataType,
              style: DefaultTextStyle.of(context).style,
            )
          ],
        ),
      ),
      RichText(
        text: TextSpan(
          text: 'Food Category: ',
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
          children: <TextSpan>[
            TextSpan(
              text: foodDataServices.propiedadesBread!.brandedFoodCategory,
              style: DefaultTextStyle.of(context).style,
            )
          ],
        ),
      ),
    ]);
  }
}

class RichBrand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final foodDataServices = Provider.of<BrandedServices>(context);
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      RichText(
        text: TextSpan(
          text: 'Brand: ',
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
          children: <TextSpan>[
            TextSpan(
              text: foodDataServices.propiedadesBread!.brandName,
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
              text: foodDataServices.propiedadesBread!.fdcId.toString(),
              style: DefaultTextStyle.of(context).style,
            )
          ],
        ),
      ),
    ]);
  }
}

class RichCountry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final foodDataServices = Provider.of<BrandedServices>(context);
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      RichText(
        text: TextSpan(
          text: 'FDC Published: ',
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
          children: <TextSpan>[
            TextSpan(
              text: foodDataServices.propiedadesBread!.publicationDate,
              style: DefaultTextStyle.of(context).style,
            )
          ],
        ),
      ),
      RichText(
        text: TextSpan(
          text: 'Market Contry: ',
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
          children: <TextSpan>[
            TextSpan(
              text: foodDataServices.propiedadesBread!.marketCountry,
              style: DefaultTextStyle.of(context).style,
            )
          ],
        ),
      ),
    ]);
  }
}
