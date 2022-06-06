import 'package:app_final/services/branded_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IngredientsPizza extends StatelessWidget {
  const IngredientsPizza({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final foodDataServices = Provider.of<BrandedServices>(context);
    if (foodDataServices.propiedadesPizzaIn == null) {
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
          "Pizza Connie's",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 156, 103, 35),
      ),
      body: Center(
        child: Card(
          elevation: 50,
          shadowColor: Colors.black,
          color: const Color.fromARGB(255, 199, 193, 142),
          child: SizedBox(
            width: 300,
            height: 500,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.brown,
                    radius: 45,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/pizza.png"),
                      radius: 40,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Ingredientes:',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    foodDataServices.propiedadesPizzaIn,
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.justify,
                  ), //Text
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
