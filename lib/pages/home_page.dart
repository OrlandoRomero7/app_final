import 'package:app_final/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerFoods(),
        appBar: AppBar(
            title: const Text(
              "Food Data Central",
              textAlign: TextAlign.center,
            ),
            centerTitle: true,
            backgroundColor: const Color(0xff442255)),
        body: Container(
          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
          color: const Color(0xff7744aa),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(image: AssetImage("assets/label.png")),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "¡Bienvenido!\nDesliza el menú para mirar las etiquetas nutricionales de alimentos o ingredientes de estos.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ]),
        ));
  }
}
